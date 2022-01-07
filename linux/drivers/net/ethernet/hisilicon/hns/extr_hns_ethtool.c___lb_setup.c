
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct net_device {int flags; struct phy_device* phydev; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_2__* dev; int phy_if; } ;
typedef enum hnae_loop { ____Placeholder_hnae_loop } hnae_loop ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_loopback ) (struct hnae_handle*,int,int) ;int (* set_promisc_mode ) (struct hnae_handle*,int) ;} ;


 int EINVAL ;
 int IFF_PROMISC ;





 int PHY_INTERFACE_MODE_XGMII ;
 int hns_nic_config_phy_loopback (struct phy_device*,int) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae_handle*,int,int) ;
 int stub2 (struct hnae_handle*,int,int) ;
 int stub3 (struct hnae_handle*,int,int) ;
 int stub4 (struct hnae_handle*,int const,int) ;
 int stub5 (struct hnae_handle*,int const,int) ;
 int stub6 (struct hnae_handle*,int) ;
 int stub7 (struct hnae_handle*,int) ;

__attribute__((used)) static int __lb_setup(struct net_device *ndev,
        enum hnae_loop loop)
{
 int ret = 0;
 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct phy_device *phy_dev = ndev->phydev;
 struct hnae_handle *h = priv->ae_handle;

 switch (loop) {
 case 131:
  ret = hns_nic_config_phy_loopback(phy_dev, 0x1);
  if (!ret)
   ret = h->dev->ops->set_loopback(h, loop, 0x1);
  break;
 case 132:
  if ((h->dev->ops->set_loopback) &&
      (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII))
   ret = h->dev->ops->set_loopback(h, loop, 0x1);
  break;
 case 130:
  if (h->dev->ops->set_loopback)
   ret = h->dev->ops->set_loopback(h, loop, 0x1);
  break;
 case 128:
  ret = hns_nic_config_phy_loopback(phy_dev, 0x0);

 case 129:
  if (!ret && h->dev->ops->set_loopback) {
   if (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII)
    ret = h->dev->ops->set_loopback(h,
     132, 0x0);

   if (!ret)
    ret = h->dev->ops->set_loopback(h,
     130, 0x0);
  }
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (!ret) {
  if (loop == 129)
   h->dev->ops->set_promisc_mode(
    h, ndev->flags & IFF_PROMISC);
  else
   h->dev->ops->set_promisc_mode(h, 1);
 }
 return ret;
}
