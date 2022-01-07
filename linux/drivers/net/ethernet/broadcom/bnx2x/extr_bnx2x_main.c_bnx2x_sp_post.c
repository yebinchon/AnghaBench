
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {void* lo; void* hi; } ;
struct TYPE_6__ {TYPE_2__ update_data_addr; } ;
struct TYPE_4__ {int type; void* conn_and_cmd_data; } ;
struct eth_spe {TYPE_3__ data; TYPE_1__ hdr; } ;
struct bnx2x {int spq_lock; int eq_spq_left; int cq_spq_left; scalar_t__ spq; scalar_t__ spq_prod_bd; int spq_mapping; int spq_prod_idx; int panic; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_SP ;
 int BP_FUNC (struct bnx2x*) ;
 int DP (int ,char*,int ,int,int,int,int,int,int,int,int,int ,int ) ;
 int EBUSY ;
 int EIO ;
 int HW_CID (struct bnx2x*,int) ;
 int SPE_HDR_CMD_ID_SHIFT ;
 int SPE_HDR_CONN_TYPE ;
 int SPE_HDR_CONN_TYPE_SHIFT ;
 int SPE_HDR_FUNCTION_ID ;
 int SPE_HDR_FUNCTION_ID_SHIFT ;
 scalar_t__ U64_HI (int ) ;
 int U64_LO (int ) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int bnx2x_is_contextless_ramrod (int,int) ;
 int bnx2x_panic () ;
 struct eth_spe* bnx2x_sp_get_next (struct bnx2x*) ;
 int bnx2x_sp_prod_update (struct bnx2x*) ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

int bnx2x_sp_post(struct bnx2x *bp, int command, int cid,
    u32 data_hi, u32 data_lo, int cmd_type)
{
 struct eth_spe *spe;
 u16 type;
 bool common = bnx2x_is_contextless_ramrod(command, cmd_type);
 spin_lock_bh(&bp->spq_lock);

 if (common) {
  if (!atomic_read(&bp->eq_spq_left)) {
   BNX2X_ERR("BUG! EQ ring full!\n");
   spin_unlock_bh(&bp->spq_lock);
   bnx2x_panic();
   return -EBUSY;
  }
 } else if (!atomic_read(&bp->cq_spq_left)) {
   BNX2X_ERR("BUG! SPQ ring full!\n");
   spin_unlock_bh(&bp->spq_lock);
   bnx2x_panic();
   return -EBUSY;
 }

 spe = bnx2x_sp_get_next(bp);


 spe->hdr.conn_and_cmd_data =
   cpu_to_le32((command << SPE_HDR_CMD_ID_SHIFT) |
        HW_CID(bp, cid));





 if (!(cmd_type & SPE_HDR_FUNCTION_ID)) {
  type = (cmd_type << SPE_HDR_CONN_TYPE_SHIFT) &
   SPE_HDR_CONN_TYPE;
  type |= ((BP_FUNC(bp) << SPE_HDR_FUNCTION_ID_SHIFT) &
    SPE_HDR_FUNCTION_ID);
 } else {
  type = cmd_type;
 }

 spe->hdr.type = cpu_to_le16(type);

 spe->data.update_data_addr.hi = cpu_to_le32(data_hi);
 spe->data.update_data_addr.lo = cpu_to_le32(data_lo);






 if (common)
  atomic_dec(&bp->eq_spq_left);
 else
  atomic_dec(&bp->cq_spq_left);

 DP(BNX2X_MSG_SP,
    "SPQE[%x] (%x:%x)  (cmd, common?) (%d,%d)  hw_cid %x  data (%x:%x) type(0x%x) left (CQ, EQ) (%x,%x)\n",
    bp->spq_prod_idx, (u32)U64_HI(bp->spq_mapping),
    (u32)(U64_LO(bp->spq_mapping) +
    (void *)bp->spq_prod_bd - (void *)bp->spq), command, common,
    HW_CID(bp, cid), data_hi, data_lo, type,
    atomic_read(&bp->cq_spq_left), atomic_read(&bp->eq_spq_left));

 bnx2x_sp_prod_update(bp);
 spin_unlock_bh(&bp->spq_lock);
 return 0;
}
