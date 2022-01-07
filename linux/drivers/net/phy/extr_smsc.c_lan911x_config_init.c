
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int smsc_phy_ack_interrupt (struct phy_device*) ;

__attribute__((used)) static int lan911x_config_init(struct phy_device *phydev)
{
 return smsc_phy_ack_interrupt(phydev);
}
