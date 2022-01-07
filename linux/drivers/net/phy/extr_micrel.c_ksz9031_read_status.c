
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {TYPE_1__* drv; scalar_t__ link; } ;
struct TYPE_2__ {int (* config_intr ) (struct phy_device*) ;} ;


 int MII_STAT1000 ;
 int genphy_config_aneg (struct phy_device*) ;
 int genphy_read_status (struct phy_device*) ;
 int phy_init_hw (struct phy_device*) ;
 scalar_t__ phy_interrupt_is_valid (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int stub1 (struct phy_device*) ;

__attribute__((used)) static int ksz9031_read_status(struct phy_device *phydev)
{
 int err;
 int regval;

 err = genphy_read_status(phydev);
 if (err)
  return err;




 regval = phy_read(phydev, MII_STAT1000);
 if ((regval & 0xFF) == 0xFF) {
  phy_init_hw(phydev);
  phydev->link = 0;
  if (phydev->drv->config_intr && phy_interrupt_is_valid(phydev))
   phydev->drv->config_intr(phydev);
  return genphy_config_aneg(phydev);
 }

 return 0;
}
