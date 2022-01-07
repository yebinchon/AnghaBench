
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int bcm87xx_did_interrupt (struct phy_device*) ;

__attribute__((used)) static int bcm87xx_ack_interrupt(struct phy_device *phydev)
{

 bcm87xx_did_interrupt(phydev);
 return 0;
}
