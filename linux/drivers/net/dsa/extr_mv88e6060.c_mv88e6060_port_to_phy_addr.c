
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MV88E6060_PORTS ;

__attribute__((used)) static int mv88e6060_port_to_phy_addr(int port)
{
 if (port >= 0 && port < MV88E6060_PORTS)
  return port;
 return -1;
}
