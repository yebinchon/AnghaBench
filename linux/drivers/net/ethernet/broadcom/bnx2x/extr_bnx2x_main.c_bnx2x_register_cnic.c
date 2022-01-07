
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cnic_ops {int dummy; } ;
struct cnic_eth_dev {int iro_arr; int drv_state; scalar_t__ num_irq; } ;
struct bnx2x {int cnic_enabled; int cnic_ops; int iro_arr; void* cnic_data; scalar_t__ cnic_kwq_pending; scalar_t__ cnic_spq_pending; scalar_t__ cnic_kwq; scalar_t__ cnic_kwq_last; scalar_t__ cnic_kwq_prod; scalar_t__ cnic_kwq_cons; struct cnic_eth_dev cnic_eth_dev; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_SP_RTNL_GET_DRV_VERSION ;
 int CNIC_DRV_STATE_REGD ;
 int CNIC_LOADED (struct bnx2x*) ;
 int CNIC_SUPPORT (struct bnx2x*) ;
 int DP (int ,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ MAX_SP_DESC_CNT ;
 int NETIF_MSG_IFUP ;
 int PAGE_SIZE ;
 int bnx2x_load_cnic (struct bnx2x*) ;
 int bnx2x_schedule_sp_rtnl (struct bnx2x*,int ,int ) ;
 int bnx2x_setup_cnic_irq_info (struct bnx2x*) ;
 scalar_t__ kzalloc (int ,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int rcu_assign_pointer (int ,struct cnic_ops*) ;

__attribute__((used)) static int bnx2x_register_cnic(struct net_device *dev, struct cnic_ops *ops,
          void *data)
{
 struct bnx2x *bp = netdev_priv(dev);
 struct cnic_eth_dev *cp = &bp->cnic_eth_dev;
 int rc;

 DP(NETIF_MSG_IFUP, "Register_cnic called\n");

 if (ops == ((void*)0)) {
  BNX2X_ERR("NULL ops received\n");
  return -EINVAL;
 }

 if (!CNIC_SUPPORT(bp)) {
  BNX2X_ERR("Can't register CNIC when not supported\n");
  return -EOPNOTSUPP;
 }

 if (!CNIC_LOADED(bp)) {
  rc = bnx2x_load_cnic(bp);
  if (rc) {
   BNX2X_ERR("CNIC-related load failed\n");
   return rc;
  }
 }

 bp->cnic_enabled = 1;

 bp->cnic_kwq = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (!bp->cnic_kwq)
  return -ENOMEM;

 bp->cnic_kwq_cons = bp->cnic_kwq;
 bp->cnic_kwq_prod = bp->cnic_kwq;
 bp->cnic_kwq_last = bp->cnic_kwq + MAX_SP_DESC_CNT;

 bp->cnic_spq_pending = 0;
 bp->cnic_kwq_pending = 0;

 bp->cnic_data = data;

 cp->num_irq = 0;
 cp->drv_state |= CNIC_DRV_STATE_REGD;
 cp->iro_arr = bp->iro_arr;

 bnx2x_setup_cnic_irq_info(bp);

 rcu_assign_pointer(bp->cnic_ops, ops);


 bnx2x_schedule_sp_rtnl(bp, BNX2X_SP_RTNL_GET_DRV_VERSION, 0);

 return 0;
}
