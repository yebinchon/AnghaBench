
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mt7530_priv {int dummy; } ;
struct mt7530_hw_vlan_entry {int old_members; } ;
typedef int (* mt7530_vlan_op ) (struct mt7530_priv*,struct mt7530_hw_vlan_entry*) ;


 int MT7530_VAWD1 ;
 int MT7530_VTCR_RD_VID ;
 int MT7530_VTCR_WR_VID ;
 int PORT_MEM_MASK ;
 int PORT_MEM_SHFT ;
 int mt7530_read (struct mt7530_priv*,int ) ;
 int mt7530_vlan_cmd (struct mt7530_priv*,int ,int ) ;

__attribute__((used)) static void
mt7530_hw_vlan_update(struct mt7530_priv *priv, u16 vid,
        struct mt7530_hw_vlan_entry *entry,
        mt7530_vlan_op vlan_op)
{
 u32 val;


 mt7530_vlan_cmd(priv, MT7530_VTCR_RD_VID, vid);

 val = mt7530_read(priv, MT7530_VAWD1);

 entry->old_members = (val >> PORT_MEM_SHFT) & PORT_MEM_MASK;


 vlan_op(priv, entry);


 mt7530_vlan_cmd(priv, MT7530_VTCR_WR_VID, vid);
}
