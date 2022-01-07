
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {TYPE_1__* phydev; } ;
struct hns_nic_priv {int link; struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {scalar_t__ (* get_status ) (struct hnae_handle*) ;int (* adjust_link ) (struct hnae_handle*,int ,int ) ;scalar_t__ (* need_adjust_link ) (struct hnae_handle*,int ,int ) ;} ;
struct TYPE_4__ {scalar_t__ link; int duplex; int speed; } ;


 int msleep (int) ;
 int netdev_info (struct net_device*,char*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 scalar_t__ stub1 (struct hnae_handle*,int ,int ) ;
 int stub2 (struct hnae_handle*,int ,int ) ;
 scalar_t__ stub3 (struct hnae_handle*) ;

__attribute__((used)) static void hns_nic_adjust_link(struct net_device *ndev)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct hnae_handle *h = priv->ae_handle;
 int state = 1;


 if (ndev->phydev) {

  if (ndev->phydev->link == 0)
   return;

  if (h->dev->ops->need_adjust_link(h, ndev->phydev->speed,
        ndev->phydev->duplex)) {




   netif_carrier_off(ndev);
   msleep(200);
   h->dev->ops->adjust_link(h, ndev->phydev->speed,
       ndev->phydev->duplex);
   netif_carrier_on(ndev);
  }
 }

 state = state && h->dev->ops->get_status(h);

 if (state != priv->link) {
  if (state) {
   netif_carrier_on(ndev);
   netif_tx_wake_all_queues(ndev);
   netdev_info(ndev, "link up\n");
  } else {
   netif_carrier_off(ndev);
   netdev_info(ndev, "link down\n");
  }
  priv->link = state;
 }
}
