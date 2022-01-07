
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct phy_device {scalar_t__ interrupts; TYPE_1__* drv; } ;
struct kszphy_type {int interrupt_level_mask; } ;
struct TYPE_2__ {struct kszphy_type* driver_data; } ;


 int KSZPHY_CTRL_INT_ACTIVE_HIGH ;
 int KSZPHY_INTCS_ALL ;
 int MII_KSZPHY_CTRL ;
 int MII_KSZPHY_INTCS ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int kszphy_config_intr(struct phy_device *phydev)
{
 const struct kszphy_type *type = phydev->drv->driver_data;
 int temp;
 u16 mask;

 if (type && type->interrupt_level_mask)
  mask = type->interrupt_level_mask;
 else
  mask = KSZPHY_CTRL_INT_ACTIVE_HIGH;


 temp = phy_read(phydev, MII_KSZPHY_CTRL);
 if (temp < 0)
  return temp;
 temp &= ~mask;
 phy_write(phydev, MII_KSZPHY_CTRL, temp);


 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  temp = KSZPHY_INTCS_ALL;
 else
  temp = 0;

 return phy_write(phydev, MII_KSZPHY_INTCS, temp);
}
