
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct mt7530_priv {int reg_mutex; TYPE_1__* ports; } ;
struct mt7530_hw_vlan_entry {int dummy; } ;
struct dsa_switch {int * ports; struct mt7530_priv* priv; } ;
struct TYPE_2__ {scalar_t__ pvid; } ;


 scalar_t__ G0_PORT_VID_DEF ;
 int G0_PORT_VID_MASK ;
 int MT7530_PPBV1_P (int) ;
 int dsa_port_is_vlan_filtering (int *) ;
 int mt7530_hw_vlan_del ;
 int mt7530_hw_vlan_entry_init (struct mt7530_hw_vlan_entry*,int,int ) ;
 int mt7530_hw_vlan_update (struct mt7530_priv*,scalar_t__,struct mt7530_hw_vlan_entry*,int ) ;
 int mt7530_rmw (struct mt7530_priv*,int ,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mt7530_port_vlan_del(struct dsa_switch *ds, int port,
       const struct switchdev_obj_port_vlan *vlan)
{
 struct mt7530_hw_vlan_entry target_entry;
 struct mt7530_priv *priv = ds->priv;
 u16 vid, pvid;




 if (!dsa_port_is_vlan_filtering(&ds->ports[port]))
  return 0;

 mutex_lock(&priv->reg_mutex);

 pvid = priv->ports[port].pvid;
 for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
  mt7530_hw_vlan_entry_init(&target_entry, port, 0);
  mt7530_hw_vlan_update(priv, vid, &target_entry,
          mt7530_hw_vlan_del);




  if (pvid == vid)
   pvid = G0_PORT_VID_DEF;
 }

 mt7530_rmw(priv, MT7530_PPBV1_P(port), G0_PORT_VID_MASK, pvid);
 priv->ports[port].pvid = pvid;

 mutex_unlock(&priv->reg_mutex);

 return 0;
}
