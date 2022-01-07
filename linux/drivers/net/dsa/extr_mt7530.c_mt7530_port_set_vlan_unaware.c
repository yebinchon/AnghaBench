
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_priv {int ds; } ;
struct dsa_switch {int * ports; struct mt7530_priv* priv; } ;


 int MT7530_CPU_PORT ;
 int MT7530_NUM_PORTS ;
 int MT7530_PCR_P (int) ;
 int MT7530_PORT_MATRIX_MODE ;
 int MT7530_PVC_P (int) ;
 int MT7530_VLAN_TRANSPARENT ;
 int PCR_MATRIX (int ) ;
 int PCR_PORT_VLAN_MASK ;
 int PORT_SPEC_TAG ;
 int VLAN_ATTR (int ) ;
 int VLAN_ATTR_MASK ;
 scalar_t__ dsa_is_user_port (struct dsa_switch*,int) ;
 scalar_t__ dsa_port_is_vlan_filtering (int *) ;
 int dsa_user_ports (int ) ;
 int mt7530_rmw (struct mt7530_priv*,int ,int ,int ) ;
 int mt7530_write (struct mt7530_priv*,int ,int ) ;

__attribute__((used)) static void
mt7530_port_set_vlan_unaware(struct dsa_switch *ds, int port)
{
 struct mt7530_priv *priv = ds->priv;
 bool all_user_ports_removed = 1;
 int i;





 mt7530_rmw(priv, MT7530_PCR_P(port), PCR_PORT_VLAN_MASK,
     MT7530_PORT_MATRIX_MODE);
 mt7530_rmw(priv, MT7530_PVC_P(port), VLAN_ATTR_MASK,
     VLAN_ATTR(MT7530_VLAN_TRANSPARENT));

 for (i = 0; i < MT7530_NUM_PORTS; i++) {
  if (dsa_is_user_port(ds, i) &&
      dsa_port_is_vlan_filtering(&ds->ports[i])) {
   all_user_ports_removed = 0;
   break;
  }
 }




 if (all_user_ports_removed) {
  mt7530_write(priv, MT7530_PCR_P(MT7530_CPU_PORT),
        PCR_MATRIX(dsa_user_ports(priv->ds)));
  mt7530_write(priv, MT7530_PVC_P(MT7530_CPU_PORT),
        PORT_SPEC_TAG);
 }
}
