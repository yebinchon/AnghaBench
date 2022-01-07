
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_priv {int dummy; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;


 int MT7530_ALL_MEMBERS ;
 int MT7530_PCR_P (int) ;
 int MT7530_PORT_SECURITY_MODE ;
 int MT7530_PVC_P (int) ;
 int MT7530_VLAN_USER ;
 int PCR_MATRIX (int ) ;
 int PCR_MATRIX_MASK ;
 int PCR_PORT_VLAN_MASK ;
 int VLAN_ATTR (int ) ;
 int VLAN_ATTR_MASK ;
 int mt7530_rmw (struct mt7530_priv*,int ,int ,int ) ;

__attribute__((used)) static void
mt7530_port_set_vlan_aware(struct dsa_switch *ds, int port)
{
 struct mt7530_priv *priv = ds->priv;






 mt7530_rmw(priv, MT7530_PCR_P(port),
     PCR_MATRIX_MASK, PCR_MATRIX(MT7530_ALL_MEMBERS));




 mt7530_rmw(priv, MT7530_PCR_P(port), PCR_PORT_VLAN_MASK,
     MT7530_PORT_SECURITY_MODE);




 mt7530_rmw(priv, MT7530_PVC_P(port), VLAN_ATTR_MASK,
     VLAN_ATTR(MT7530_VLAN_USER));
}
