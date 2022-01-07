
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int irq; } ;


 int free_irq (int ,struct phy_device*) ;
 int phy_disable_interrupts (struct phy_device*) ;

void phy_free_interrupt(struct phy_device *phydev)
{
 phy_disable_interrupts(phydev);
 free_irq(phydev->irq, phydev);
}
