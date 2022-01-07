
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct dsa_switch {int dummy; } ;
typedef int phy_interface_t ;


 int LINK_FORCED_UP ;
 unsigned int MLO_AN_FIXED ;
 int mv88e6xxx_mac_link_force (struct dsa_switch*,int,int ) ;

__attribute__((used)) static void mv88e6xxx_mac_link_up(struct dsa_switch *ds, int port,
      unsigned int mode, phy_interface_t interface,
      struct phy_device *phydev)
{
 if (mode == MLO_AN_FIXED)
  mv88e6xxx_mac_link_force(ds, port, LINK_FORCED_UP);
}
