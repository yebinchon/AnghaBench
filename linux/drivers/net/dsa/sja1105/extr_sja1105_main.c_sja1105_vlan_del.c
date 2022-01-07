
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; int flags; } ;
struct sja1105_private {int dummy; } ;
struct dsa_switch {int dev; struct sja1105_private* priv; } ;


 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int dev_err (int ,char*,scalar_t__,int,int) ;
 int sja1105_vlan_apply (struct sja1105_private*,int,scalar_t__,int,int) ;

__attribute__((used)) static int sja1105_vlan_del(struct dsa_switch *ds, int port,
       const struct switchdev_obj_port_vlan *vlan)
{
 struct sja1105_private *priv = ds->priv;
 u16 vid;
 int rc;

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; vid++) {
  rc = sja1105_vlan_apply(priv, port, vid, 0, vlan->flags &
     BRIDGE_VLAN_INFO_UNTAGGED);
  if (rc < 0) {
   dev_err(ds->dev, "Failed to remove VLAN %d from port %d: %d\n",
    vid, port, rc);
   return rc;
  }
 }
 return 0;
}
