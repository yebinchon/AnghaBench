
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3 {int phy_flags; int phy_addr; int mdio_bus; TYPE_1__* pdev; int dev; } ;
struct phy_device {int interface; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct phy_device*) ;



 int PTR_ERR (struct phy_device*) ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int TG3_PHYFLG_10_100_ONLY ;
 int TG3_PHYFLG_IS_CONNECTED ;
 int dev_err (int *,char*) ;
 struct phy_device* mdiobus_get_phy (int ,int ) ;
 int phy_attached_info (struct phy_device*) ;
 struct phy_device* phy_connect (int ,int ,int ,int) ;
 int phy_disconnect (struct phy_device*) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phy_support_asym_pause (struct phy_device*) ;
 int phydev_name (struct phy_device*) ;
 int tg3_adjust_link ;
 int tg3_bmcr_reset (struct tg3*) ;

__attribute__((used)) static int tg3_phy_init(struct tg3 *tp)
{
 struct phy_device *phydev;

 if (tp->phy_flags & TG3_PHYFLG_IS_CONNECTED)
  return 0;


 tg3_bmcr_reset(tp);

 phydev = mdiobus_get_phy(tp->mdio_bus, tp->phy_addr);


 phydev = phy_connect(tp->dev, phydev_name(phydev),
        tg3_adjust_link, phydev->interface);
 if (IS_ERR(phydev)) {
  dev_err(&tp->pdev->dev, "Could not attach to PHY\n");
  return PTR_ERR(phydev);
 }


 switch (phydev->interface) {
 case 130:
 case 128:
  if (!(tp->phy_flags & TG3_PHYFLG_10_100_ONLY)) {
   phy_set_max_speed(phydev, SPEED_1000);
   phy_support_asym_pause(phydev);
   break;
  }

 case 129:
  phy_set_max_speed(phydev, SPEED_100);
  phy_support_asym_pause(phydev);
  break;
 default:
  phy_disconnect(mdiobus_get_phy(tp->mdio_bus, tp->phy_addr));
  return -EINVAL;
 }

 tp->phy_flags |= TG3_PHYFLG_IS_CONNECTED;

 phy_attached_info(phydev);

 return 0;
}
