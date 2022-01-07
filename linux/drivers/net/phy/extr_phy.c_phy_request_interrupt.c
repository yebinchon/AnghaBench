
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {void* irq; } ;


 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 void* PHY_POLL ;
 scalar_t__ phy_enable_interrupts (struct phy_device*) ;
 int phy_free_interrupt (struct phy_device*) ;
 int phy_interrupt ;
 int phydev_name (struct phy_device*) ;
 int phydev_warn (struct phy_device*,char*,...) ;
 int request_threaded_irq (void*,int *,int ,int,int ,struct phy_device*) ;

void phy_request_interrupt(struct phy_device *phydev)
{
 int err;

 err = request_threaded_irq(phydev->irq, ((void*)0), phy_interrupt,
       IRQF_ONESHOT | IRQF_SHARED,
       phydev_name(phydev), phydev);
 if (err) {
  phydev_warn(phydev, "Error %d requesting IRQ %d, falling back to polling\n",
       err, phydev->irq);
  phydev->irq = PHY_POLL;
 } else {
  if (phy_enable_interrupts(phydev)) {
   phydev_warn(phydev, "Can't enable interrupt, falling back to polling\n");
   phy_free_interrupt(phydev);
   phydev->irq = PHY_POLL;
  }
 }
}
