
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;
typedef int phy_interface_t ;


 int bcm_sf2_sw_mac_link_set (struct dsa_switch*,int,int ,int) ;

__attribute__((used)) static void bcm_sf2_sw_mac_link_down(struct dsa_switch *ds, int port,
         unsigned int mode,
         phy_interface_t interface)
{
 bcm_sf2_sw_mac_link_set(ds, port, interface, 0);
}
