
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ interrupts; } ;


 int IP101A_G_IRQ_ALL_MASK ;
 int IP101A_G_IRQ_CONF_STATUS ;
 int IP101A_G_IRQ_PIN_USED ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int ip101a_g_config_intr(struct phy_device *phydev)
{
 u16 val;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)

  val = IP101A_G_IRQ_PIN_USED;
 else
  val = IP101A_G_IRQ_ALL_MASK;

 return phy_write(phydev, IP101A_G_IRQ_CONF_STATUS, val);
}
