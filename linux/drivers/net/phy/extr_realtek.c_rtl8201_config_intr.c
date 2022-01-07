
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ interrupts; } ;


 int BIT (int) ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int RTL8201F_IER ;
 int phy_write_paged (struct phy_device*,int,int ,int) ;

__attribute__((used)) static int rtl8201_config_intr(struct phy_device *phydev)
{
 u16 val;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  val = BIT(13) | BIT(12) | BIT(11);
 else
  val = 0;

 return phy_write_paged(phydev, 0x7, RTL8201F_IER, val);
}
