
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt7530_priv {int dummy; } ;
struct mt7530_hw_vlan_entry {int old_members; int port; scalar_t__ untagged; } ;


 int BIT (int ) ;
 int ETAG_CTRL_P (int ,int) ;
 int ETAG_CTRL_P_MASK (int ) ;
 int IVL_MAC ;
 int MT7530_CPU_PORT ;
 int MT7530_VAWD1 ;
 int MT7530_VAWD2 ;
 int MT7530_VLAN_EGRESS_STACK ;
 int MT7530_VLAN_EGRESS_TAG ;
 int MT7530_VLAN_EGRESS_UNTAG ;
 int PORT_MEM (int) ;
 int VLAN_VALID ;
 int VTAG_EN ;
 int mt7530_rmw (struct mt7530_priv*,int ,int ,int ) ;
 int mt7530_write (struct mt7530_priv*,int ,int) ;

__attribute__((used)) static void
mt7530_hw_vlan_add(struct mt7530_priv *priv,
     struct mt7530_hw_vlan_entry *entry)
{
 u8 new_members;
 u32 val;

 new_members = entry->old_members | BIT(entry->port) |
        BIT(MT7530_CPU_PORT);




 val = IVL_MAC | VTAG_EN | PORT_MEM(new_members) | VLAN_VALID;
 mt7530_write(priv, MT7530_VAWD1, val);




 val = entry->untagged ? MT7530_VLAN_EGRESS_UNTAG :
    MT7530_VLAN_EGRESS_TAG;
 mt7530_rmw(priv, MT7530_VAWD2,
     ETAG_CTRL_P_MASK(entry->port),
     ETAG_CTRL_P(entry->port, val));






 mt7530_rmw(priv, MT7530_VAWD2,
     ETAG_CTRL_P_MASK(MT7530_CPU_PORT),
     ETAG_CTRL_P(MT7530_CPU_PORT,
          MT7530_VLAN_EGRESS_STACK));
}
