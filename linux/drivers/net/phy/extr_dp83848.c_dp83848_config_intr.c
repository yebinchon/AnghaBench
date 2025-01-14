
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int DP83848_INT_EN_MASK ;
 int DP83848_MICR ;
 int DP83848_MICR_INTEN ;
 int DP83848_MICR_INT_OE ;
 int DP83848_MISR ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int dp83848_config_intr(struct phy_device *phydev)
{
 int control, ret;

 control = phy_read(phydev, DP83848_MICR);
 if (control < 0)
  return control;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {
  control |= DP83848_MICR_INT_OE;
  control |= DP83848_MICR_INTEN;

  ret = phy_write(phydev, DP83848_MISR, DP83848_INT_EN_MASK);
  if (ret < 0)
   return ret;
 } else {
  control &= ~DP83848_MICR_INTEN;
 }

 return phy_write(phydev, DP83848_MICR, control);
}
