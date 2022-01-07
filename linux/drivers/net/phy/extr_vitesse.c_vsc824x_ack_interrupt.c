
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_VSC8244_ISTAT ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int vsc824x_ack_interrupt(struct phy_device *phydev)
{
 int err = 0;





 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  err = phy_read(phydev, MII_VSC8244_ISTAT);

 return (err < 0) ? err : 0;
}
