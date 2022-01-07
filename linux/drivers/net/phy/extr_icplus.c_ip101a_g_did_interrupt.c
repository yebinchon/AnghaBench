
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int IP101A_G_IRQ_CONF_STATUS ;
 int IP101A_G_IRQ_DUPLEX_CHANGE ;
 int IP101A_G_IRQ_LINK_CHANGE ;
 int IP101A_G_IRQ_SPEED_CHANGE ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int ip101a_g_did_interrupt(struct phy_device *phydev)
{
 int val = phy_read(phydev, IP101A_G_IRQ_CONF_STATUS);

 if (val < 0)
  return 0;

 return val & (IP101A_G_IRQ_SPEED_CHANGE |
        IP101A_G_IRQ_DUPLEX_CHANGE |
        IP101A_G_IRQ_LINK_CHANGE);
}
