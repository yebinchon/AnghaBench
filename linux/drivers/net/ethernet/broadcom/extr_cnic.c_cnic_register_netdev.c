
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {int cnic_ops; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; int (* drv_register_cnic ) (int ,int ,struct cnic_dev*) ;int max_iscsi_conn; } ;
struct cnic_dev {int max_iscsi_conn; int netdev; struct cnic_local* cnic_priv; } ;


 int CNIC_DRV_STATE_NO_ISCSI ;
 int CNIC_DRV_STATE_REGD ;
 int ENODEV ;
 int netdev_err (int ,char*) ;
 int stub1 (int ,int ,struct cnic_dev*) ;

__attribute__((used)) static int cnic_register_netdev(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;
 int err;

 if (!ethdev)
  return -ENODEV;

 if (ethdev->drv_state & CNIC_DRV_STATE_REGD)
  return 0;

 err = ethdev->drv_register_cnic(dev->netdev, cp->cnic_ops, dev);
 if (err)
  netdev_err(dev->netdev, "register_cnic failed\n");




 dev->max_iscsi_conn = ethdev->max_iscsi_conn;
 if (ethdev->drv_state & CNIC_DRV_STATE_NO_ISCSI)
  dev->max_iscsi_conn = 0;

 return err;
}
