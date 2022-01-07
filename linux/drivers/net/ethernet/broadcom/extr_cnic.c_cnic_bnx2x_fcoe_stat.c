
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union l5cm_specific_data {int dummy; } l5cm_specific_data ;
typedef int u32 ;
struct kwqe {int dummy; } ;
struct fcoe_stat_ramrod_params {int stat_kwqe; } ;
struct fcoe_kwqe_stat {int dummy; } ;
struct cnic_local {int fcoe_init_cid; } ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_FCOE_L5_CID_BASE ;
 int BNX2X_HW_CID (struct bnx2x*,int ) ;
 int ENOMEM ;
 int FCOE_CONNECTION_TYPE ;
 int FCOE_RAMROD_CMD_ID_STAT_FUNC ;
 struct fcoe_stat_ramrod_params* cnic_get_kwqe_16_data (struct cnic_local*,int ,union l5cm_specific_data*) ;
 int cnic_submit_kwqe_16 (struct cnic_dev*,int ,int ,int ,union l5cm_specific_data*) ;
 int memcpy (int *,struct fcoe_kwqe_stat*,int) ;
 int memset (struct fcoe_stat_ramrod_params*,int ,int) ;
 struct bnx2x* netdev_priv (int ) ;

__attribute__((used)) static int cnic_bnx2x_fcoe_stat(struct cnic_dev *dev, struct kwqe *kwqe)
{
 struct fcoe_kwqe_stat *req;
 struct fcoe_stat_ramrod_params *fcoe_stat;
 union l5cm_specific_data l5_data;
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 int ret;
 u32 cid;

 req = (struct fcoe_kwqe_stat *) kwqe;
 cid = BNX2X_HW_CID(bp, cp->fcoe_init_cid);

 fcoe_stat = cnic_get_kwqe_16_data(cp, BNX2X_FCOE_L5_CID_BASE, &l5_data);
 if (!fcoe_stat)
  return -ENOMEM;

 memset(fcoe_stat, 0, sizeof(*fcoe_stat));
 memcpy(&fcoe_stat->stat_kwqe, req, sizeof(*req));

 ret = cnic_submit_kwqe_16(dev, FCOE_RAMROD_CMD_ID_STAT_FUNC, cid,
      FCOE_CONNECTION_TYPE, &l5_data);
 return ret;
}
