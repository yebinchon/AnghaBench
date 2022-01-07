
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_AM79C_IR ;
 int MII_AM79C_IR_IMASK_INIT ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int am79c_config_intr(struct phy_device *phydev)
{
 int err;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  err = phy_write(phydev, MII_AM79C_IR, MII_AM79C_IR_IMASK_INIT);
 else
  err = phy_write(phydev, MII_AM79C_IR, 0);

 return err;
}
