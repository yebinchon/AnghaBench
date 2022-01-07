
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct switchdev_obj_port_vlan {int flags; scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct mt7530_priv {int reg_mutex; TYPE_1__* ports; } ;
struct mt7530_hw_vlan_entry {int dummy; } ;
struct dsa_switch {int * ports; struct mt7530_priv* priv; } ;
struct TYPE_2__ {scalar_t__ pvid; } ;


 int BRIDGE_VLAN_INFO_PVID ;
 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int G0_PORT_VID (scalar_t__) ;
 int G0_PORT_VID_MASK ;
 int MT7530_PPBV1_P (int) ;
 int dsa_port_is_vlan_filtering (int *) ;
 int mt7530_hw_vlan_add ;
 int mt7530_hw_vlan_entry_init (struct mt7530_hw_vlan_entry*,int,int) ;
 int mt7530_hw_vlan_update (struct mt7530_priv*,scalar_t__,struct mt7530_hw_vlan_entry*,int ) ;
 int mt7530_rmw (struct mt7530_priv*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
mt7530_port_vlan_add(struct dsa_switch *ds, int port,
       const struct switchdev_obj_port_vlan *vlan)
{
 bool untagged = vlan->flags & BRIDGE_VLAN_INFO_UNTAGGED;
 bool pvid = vlan->flags & BRIDGE_VLAN_INFO_PVID;
 struct mt7530_hw_vlan_entry new_entry;
 struct mt7530_priv *priv = ds->priv;
 u16 vid;




 if (!dsa_port_is_vlan_filtering(&ds->ports[port]))
  return;

 mutex_lock(&priv->reg_mutex);

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
  mt7530_hw_vlan_entry_init(&new_entry, port, untagged);
  mt7530_hw_vlan_update(priv, vid, &new_entry,
          mt7530_hw_vlan_add);
 }

 if (pvid) {
  mt7530_rmw(priv, MT7530_PPBV1_P(port), G0_PORT_VID_MASK,
      G0_PORT_VID(vlan->vid_end));
  priv->ports[port].pvid = vlan->vid_end;
 }

 mutex_unlock(&priv->reg_mutex);
}
