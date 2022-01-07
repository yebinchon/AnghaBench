
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gswip_priv {int dummy; } ;
struct dsa_switch {struct gswip_priv* priv; } ;


 int br_vlan_enabled (struct net_device*) ;
 int gswip_add_single_port_br (struct gswip_priv*,int,int) ;
 int gswip_vlan_remove (struct gswip_priv*,struct net_device*,int,int ,int,int) ;

__attribute__((used)) static void gswip_port_bridge_leave(struct dsa_switch *ds, int port,
        struct net_device *bridge)
{
 struct gswip_priv *priv = ds->priv;

 gswip_add_single_port_br(priv, port, 1);




 if (!br_vlan_enabled(bridge))
  gswip_vlan_remove(priv, bridge, port, 0, 1, 0);
}
