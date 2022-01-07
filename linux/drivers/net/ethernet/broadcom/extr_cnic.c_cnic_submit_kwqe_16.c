
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int lo; int hi; } ;
union l5cm_specific_data {TYPE_4__ phy_address; } ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {void* hi; void* lo; } ;
struct TYPE_8__ {TYPE_2__ phy_address; } ;
struct TYPE_6__ {scalar_t__ reserved1; int type; void* conn_and_cmd_data; } ;
struct l5cm_spe {TYPE_3__ data; TYPE_1__ hdr; } ;
struct kwqe_16 {int dummy; } ;
struct cnic_local {int cnic_ulp_lock; TYPE_5__* ethdev; } ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;
struct bnx2x {int pfid; } ;
struct TYPE_10__ {int (* drv_submit_kwqes_16 ) (int ,struct kwqe_16**,int) ;} ;


 int BNX2X_HW_CID (struct bnx2x*,int) ;
 int SPE_HDR_CMD_ID_SHIFT ;
 int SPE_HDR_CONN_TYPE ;
 int SPE_HDR_CONN_TYPE_SHIFT ;
 int SPE_HDR_FUNCTION_ID ;
 int SPE_HDR_FUNCTION_ID_SHIFT ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 struct bnx2x* netdev_priv (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,struct kwqe_16**,int) ;

__attribute__((used)) static int cnic_submit_kwqe_16(struct cnic_dev *dev, u32 cmd, u32 cid,
    u32 type, union l5cm_specific_data *l5_data)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 struct l5cm_spe kwqe;
 struct kwqe_16 *kwq[1];
 u16 type_16;
 int ret;

 kwqe.hdr.conn_and_cmd_data =
  cpu_to_le32(((cmd << SPE_HDR_CMD_ID_SHIFT) |
        BNX2X_HW_CID(bp, cid)));

 type_16 = (type << SPE_HDR_CONN_TYPE_SHIFT) & SPE_HDR_CONN_TYPE;
 type_16 |= (bp->pfid << SPE_HDR_FUNCTION_ID_SHIFT) &
     SPE_HDR_FUNCTION_ID;

 kwqe.hdr.type = cpu_to_le16(type_16);
 kwqe.hdr.reserved1 = 0;
 kwqe.data.phy_address.lo = cpu_to_le32(l5_data->phy_address.lo);
 kwqe.data.phy_address.hi = cpu_to_le32(l5_data->phy_address.hi);

 kwq[0] = (struct kwqe_16 *) &kwqe;

 spin_lock_bh(&cp->cnic_ulp_lock);
 ret = cp->ethdev->drv_submit_kwqes_16(dev->netdev, kwq, 1);
 spin_unlock_bh(&cp->cnic_ulp_lock);

 if (ret == 1)
  return 0;

 return ret;
}
