
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phy_interface_t ;


 int PHY_INTERFACE_MODE_NA ;
 int PHY_INTERFACE_MODE_XAUI ;

phy_interface_t mv88e6390x_port_max_speed_mode(int port)
{
 if (port == 9 || port == 10)
  return PHY_INTERFACE_MODE_XAUI;

 return PHY_INTERFACE_MODE_NA;
}
