
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct hns_nic_priv {int phy_led_val; struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_2__* dev; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_led_id ) (struct hnae_handle*,int ) ;} ;


 int EINVAL ;




 int HNAE_LED_ACTIVE ;
 int HNAE_LED_INACTIVE ;
 int HNAE_LED_OFF ;
 int HNAE_LED_ON ;
 int HNS_LED_FC_REG ;
 int HNS_LED_FORCE_OFF ;
 int HNS_LED_FORCE_ON ;
 int HNS_PHY_PAGE_COPPER ;
 int HNS_PHY_PAGE_LED ;
 int HNS_PHY_PAGE_REG ;
 int hns_phy_led_set (struct net_device*,int ) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;
 int stub1 (struct hnae_handle*,int ) ;
 int stub2 (struct hnae_handle*,int ) ;
 int stub3 (struct hnae_handle*,int ) ;
 int stub4 (struct hnae_handle*,int ) ;

__attribute__((used)) static int
hns_set_phys_id(struct net_device *netdev, enum ethtool_phys_id_state state)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);
 struct hnae_handle *h = priv->ae_handle;
 struct phy_device *phy_dev = netdev->phydev;
 int ret;

 if (phy_dev)
  switch (state) {
  case 131:
   ret = phy_write(phy_dev, HNS_PHY_PAGE_REG,
     HNS_PHY_PAGE_LED);
   if (ret)
    return ret;

   priv->phy_led_val = phy_read(phy_dev, HNS_LED_FC_REG);

   ret = phy_write(phy_dev, HNS_PHY_PAGE_REG,
     HNS_PHY_PAGE_COPPER);
   if (ret)
    return ret;
   return 2;
  case 128:
   ret = hns_phy_led_set(netdev, HNS_LED_FORCE_ON);
   if (ret)
    return ret;
   break;
  case 129:
   ret = hns_phy_led_set(netdev, HNS_LED_FORCE_OFF);
   if (ret)
    return ret;
   break;
  case 130:
   ret = phy_write(phy_dev, HNS_PHY_PAGE_REG,
     HNS_PHY_PAGE_LED);
   if (ret)
    return ret;

   ret = phy_write(phy_dev, HNS_LED_FC_REG,
     priv->phy_led_val);
   if (ret)
    return ret;

   ret = phy_write(phy_dev, HNS_PHY_PAGE_REG,
     HNS_PHY_PAGE_COPPER);
   if (ret)
    return ret;
   break;
  default:
   return -EINVAL;
  }
 else
  switch (state) {
  case 131:
   return h->dev->ops->set_led_id(h, HNAE_LED_ACTIVE);
  case 128:
   return h->dev->ops->set_led_id(h, HNAE_LED_ON);
  case 129:
   return h->dev->ops->set_led_id(h, HNAE_LED_OFF);
  case 130:
   return h->dev->ops->set_led_id(h, HNAE_LED_INACTIVE);
  default:
   return -EINVAL;
  }

 return 0;
}
