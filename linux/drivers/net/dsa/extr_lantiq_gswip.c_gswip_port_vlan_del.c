
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct switchdev_obj_port_vlan {int flags; scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct net_device {int dummy; } ;
struct gswip_priv {int dummy; } ;
struct dsa_switch {struct gswip_priv* priv; } ;
struct TYPE_2__ {struct net_device* bridge_dev; } ;


 int BRIDGE_VLAN_INFO_PVID ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;
 TYPE_1__* dsa_to_port (struct dsa_switch*,int) ;
 int gswip_vlan_remove (struct gswip_priv*,struct net_device*,int,scalar_t__,int,int) ;

__attribute__((used)) static int gswip_port_vlan_del(struct dsa_switch *ds, int port,
          const struct switchdev_obj_port_vlan *vlan)
{
 struct gswip_priv *priv = ds->priv;
 struct net_device *bridge = dsa_to_port(ds, port)->bridge_dev;
 bool pvid = vlan->flags & BRIDGE_VLAN_INFO_PVID;
 u16 vid;
 int err;






 if (dsa_is_cpu_port(ds, port))
  return 0;

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
  err = gswip_vlan_remove(priv, bridge, port, vid, pvid, 1);
  if (err)
   return err;
 }

 return 0;
}
