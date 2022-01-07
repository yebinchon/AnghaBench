
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* update_drv_state ) (int ,int) ;int (* set_power_state ) (int ,int ) ;} ;


 int PCI_D0 ;
 int QEDE_LOAD_NORMAL ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int qede_load (struct qede_dev*,int ,int) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int) ;
 int udp_tunnel_get_rx_info (struct net_device*) ;

__attribute__((used)) static int qede_open(struct net_device *ndev)
{
 struct qede_dev *edev = netdev_priv(ndev);
 int rc;

 netif_carrier_off(ndev);

 edev->ops->common->set_power_state(edev->cdev, PCI_D0);

 rc = qede_load(edev, QEDE_LOAD_NORMAL, 0);
 if (rc)
  return rc;

 udp_tunnel_get_rx_info(ndev);

 edev->ops->common->update_drv_state(edev->cdev, 1);

 return 0;
}
