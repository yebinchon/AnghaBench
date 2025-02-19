
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union l5cm_specific_data {int dummy; } l5cm_specific_data ;
typedef int u64 ;
typedef int u32 ;
struct kwqe {int dummy; } ;
struct TYPE_5__ {scalar_t__ op_code; } ;
struct fcoe_kwqe_init3 {TYPE_1__ hdr; } ;
struct fcoe_kwqe_init2 {TYPE_1__ hdr; } ;
struct fcoe_kwqe_init1 {TYPE_1__ hdr; } ;
struct TYPE_6__ {int lo; int hi; } ;
struct fcoe_init_ramrod_params {int sb_id; int eq_prod; int sb_num; int eq_pbl_size; TYPE_2__ eq_pbl_base; int init_kwqe3; int init_kwqe2; int init_kwqe1; } ;
struct TYPE_7__ {int pgtbl_map; int num_pages; } ;
struct TYPE_8__ {scalar_t__ sw_prod_idx; TYPE_3__ dma; } ;
struct cnic_local {int fcoe_init_cid; TYPE_4__ kcq2; int status_blk_num; } ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_FCOE_L5_CID_BASE ;
 int BNX2X_HW_CID (struct bnx2x*,int ) ;
 int CNIC_KWQ16_DATA_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int FCOE_CONNECTION_TYPE ;
 scalar_t__ FCOE_KWQE_OPCODE_INIT2 ;
 scalar_t__ FCOE_KWQE_OPCODE_INIT3 ;
 int FCOE_RAMROD_CMD_ID_INIT_FUNC ;
 int HC_INDEX_FCOE_EQ_CONS ;
 int MAX_KCQ_IDX ;
 struct fcoe_init_ramrod_params* cnic_get_kwqe_16_data (struct cnic_local*,int ,union l5cm_specific_data*) ;
 int cnic_submit_kwqe_16 (struct cnic_dev*,int ,int,int ,union l5cm_specific_data*) ;
 int memcpy (int *,struct fcoe_kwqe_init3*,int) ;
 int memset (struct fcoe_init_ramrod_params*,int ,int) ;
 int netdev_err (int ,char*) ;
 struct bnx2x* netdev_priv (int ) ;

__attribute__((used)) static int cnic_bnx2x_fcoe_init1(struct cnic_dev *dev, struct kwqe *wqes[],
     u32 num, int *work)
{
 int ret;
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 u32 cid;
 struct fcoe_init_ramrod_params *fcoe_init;
 struct fcoe_kwqe_init1 *req1;
 struct fcoe_kwqe_init2 *req2;
 struct fcoe_kwqe_init3 *req3;
 union l5cm_specific_data l5_data;

 if (num < 3) {
  *work = num;
  return -EINVAL;
 }
 req1 = (struct fcoe_kwqe_init1 *) wqes[0];
 req2 = (struct fcoe_kwqe_init2 *) wqes[1];
 req3 = (struct fcoe_kwqe_init3 *) wqes[2];
 if (req2->hdr.op_code != FCOE_KWQE_OPCODE_INIT2) {
  *work = 1;
  return -EINVAL;
 }
 if (req3->hdr.op_code != FCOE_KWQE_OPCODE_INIT3) {
  *work = 2;
  return -EINVAL;
 }

 if (sizeof(*fcoe_init) > CNIC_KWQ16_DATA_SIZE) {
  netdev_err(dev->netdev, "fcoe_init size too big\n");
  return -ENOMEM;
 }
 fcoe_init = cnic_get_kwqe_16_data(cp, BNX2X_FCOE_L5_CID_BASE, &l5_data);
 if (!fcoe_init)
  return -ENOMEM;

 memset(fcoe_init, 0, sizeof(*fcoe_init));
 memcpy(&fcoe_init->init_kwqe1, req1, sizeof(*req1));
 memcpy(&fcoe_init->init_kwqe2, req2, sizeof(*req2));
 memcpy(&fcoe_init->init_kwqe3, req3, sizeof(*req3));
 fcoe_init->eq_pbl_base.lo = cp->kcq2.dma.pgtbl_map & 0xffffffff;
 fcoe_init->eq_pbl_base.hi = (u64) cp->kcq2.dma.pgtbl_map >> 32;
 fcoe_init->eq_pbl_size = cp->kcq2.dma.num_pages;

 fcoe_init->sb_num = cp->status_blk_num;
 fcoe_init->eq_prod = MAX_KCQ_IDX;
 fcoe_init->sb_id = HC_INDEX_FCOE_EQ_CONS;
 cp->kcq2.sw_prod_idx = 0;

 cid = BNX2X_HW_CID(bp, cp->fcoe_init_cid);
 ret = cnic_submit_kwqe_16(dev, FCOE_RAMROD_CMD_ID_INIT_FUNC, cid,
      FCOE_CONNECTION_TYPE, &l5_data);
 *work = 3;
 return ret;
}
