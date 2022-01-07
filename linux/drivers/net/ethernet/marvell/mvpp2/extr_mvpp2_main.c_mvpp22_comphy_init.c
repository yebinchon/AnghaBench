
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {int comphy; int phy_interface; } ;


 int PHY_MODE_ETHERNET ;
 int phy_power_on (int ) ;
 int phy_set_mode_ext (int ,int ,int ) ;

__attribute__((used)) static int mvpp22_comphy_init(struct mvpp2_port *port)
{
 int ret;

 if (!port->comphy)
  return 0;

 ret = phy_set_mode_ext(port->comphy, PHY_MODE_ETHERNET,
          port->phy_interface);
 if (ret)
  return ret;

 return phy_power_on(port->comphy);
}
