
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int AT803X_INTR_ENABLE ;
 int AT803X_INTR_ENABLE_AUTONEG_ERR ;
 int AT803X_INTR_ENABLE_DUPLEX_CHANGED ;
 int AT803X_INTR_ENABLE_LINK_FAIL ;
 int AT803X_INTR_ENABLE_LINK_SUCCESS ;
 int AT803X_INTR_ENABLE_SPEED_CHANGED ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int at803x_config_intr(struct phy_device *phydev)
{
 int err;
 int value;

 value = phy_read(phydev, AT803X_INTR_ENABLE);

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {
  value |= AT803X_INTR_ENABLE_AUTONEG_ERR;
  value |= AT803X_INTR_ENABLE_SPEED_CHANGED;
  value |= AT803X_INTR_ENABLE_DUPLEX_CHANGED;
  value |= AT803X_INTR_ENABLE_LINK_FAIL;
  value |= AT803X_INTR_ENABLE_LINK_SUCCESS;

  err = phy_write(phydev, AT803X_INTR_ENABLE, value);
 }
 else
  err = phy_write(phydev, AT803X_INTR_ENABLE, 0);

 return err;
}
