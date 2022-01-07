
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phy_interface_t ;


 int PHY_INTERFACE_MODE_2500BASEX ;
 int PHY_INTERFACE_MODE_NA ;

phy_interface_t mv88e6341_port_max_speed_mode(int port)
{
 if (port == 5)
  return PHY_INTERFACE_MODE_2500BASEX;

 return PHY_INTERFACE_MODE_NA;
}
