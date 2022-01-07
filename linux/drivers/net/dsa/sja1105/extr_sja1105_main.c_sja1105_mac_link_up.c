
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct dsa_switch {int priv; } ;
typedef int phy_interface_t ;


 int BIT (int) ;
 int sja1105_inhibit_tx (int ,int ,int) ;

__attribute__((used)) static void sja1105_mac_link_up(struct dsa_switch *ds, int port,
    unsigned int mode,
    phy_interface_t interface,
    struct phy_device *phydev)
{
 sja1105_inhibit_tx(ds->priv, BIT(port), 0);
}
