
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct mt7530_priv {int dummy; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;
typedef int phy_interface_t ;


 int mt7530_port_set_status (struct mt7530_priv*,int,int) ;

__attribute__((used)) static void mt7530_phylink_mac_link_up(struct dsa_switch *ds, int port,
           unsigned int mode,
           phy_interface_t interface,
           struct phy_device *phydev)
{
 struct mt7530_priv *priv = ds->priv;

 mt7530_port_set_status(priv, port, 1);
}
