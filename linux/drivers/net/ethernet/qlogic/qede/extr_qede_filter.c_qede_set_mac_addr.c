
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct qede_dev {scalar_t__ state; int cdev; TYPE_2__* ops; } ;
struct net_device {int dev_addr; } ;
struct TYPE_4__ {TYPE_1__* common; int (* req_bulletin_update_mac ) (int ,int ) ;int (* check_mac ) (int ,int ) ;} ;
struct TYPE_3__ {int (* update_mac ) (int ,int ) ;} ;


 int DP_INFO (struct qede_dev*,char*,int ) ;
 int DP_NOTICE (struct qede_dev*,char*,...) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*) ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ IS_VF (struct qede_dev*) ;
 int NETIF_MSG_IFDOWN ;
 scalar_t__ QEDE_STATE_OPEN ;
 int QED_FILTER_XCAST_TYPE_ADD ;
 int QED_FILTER_XCAST_TYPE_DEL ;
 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int ether_addr_copy (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_set_ucast_rx_mac (struct qede_dev*,int ,int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;

int qede_set_mac_addr(struct net_device *ndev, void *p)
{
 struct qede_dev *edev = netdev_priv(ndev);
 struct sockaddr *addr = p;
 int rc = 0;





 __qede_lock(edev);

 if (!is_valid_ether_addr(addr->sa_data)) {
  DP_NOTICE(edev, "The MAC address is not valid\n");
  rc = -EFAULT;
  goto out;
 }

 if (!edev->ops->check_mac(edev->cdev, addr->sa_data)) {
  DP_NOTICE(edev, "qed prevents setting MAC %pM\n",
     addr->sa_data);
  rc = -EINVAL;
  goto out;
 }

 if (edev->state == QEDE_STATE_OPEN) {

  rc = qede_set_ucast_rx_mac(edev, QED_FILTER_XCAST_TYPE_DEL,
        ndev->dev_addr);
  if (rc)
   goto out;
 }

 ether_addr_copy(ndev->dev_addr, addr->sa_data);
 DP_INFO(edev, "Setting device MAC to %pM\n", addr->sa_data);

 if (edev->state != QEDE_STATE_OPEN) {
  DP_VERBOSE(edev, NETIF_MSG_IFDOWN,
      "The device is currently down\n");

  if (IS_VF(edev) && edev->ops->req_bulletin_update_mac)
   edev->ops->req_bulletin_update_mac(edev->cdev,
          ndev->dev_addr);
  goto out;
 }

 edev->ops->common->update_mac(edev->cdev, ndev->dev_addr);

 rc = qede_set_ucast_rx_mac(edev, QED_FILTER_XCAST_TYPE_ADD,
       ndev->dev_addr);
out:
 __qede_unlock(edev);
 return rc;
}
