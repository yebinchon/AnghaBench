
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct switchdev_obj_port_vlan {int flags; int vid_begin; int vid_end; } ;
struct realtek_smi {int dev; TYPE_1__* ops; } ;
struct dsa_switch {struct realtek_smi* priv; } ;
struct TYPE_2__ {int (* is_vlan_valid ) (struct realtek_smi*,int) ;} ;


 int BIT (int) ;
 int BRIDGE_VLAN_INFO_PVID ;
 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,int,...) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;
 scalar_t__ dsa_is_dsa_port (struct dsa_switch*,int) ;
 int rtl8366_get_pvid (struct realtek_smi*,int,int*) ;
 int rtl8366_set_pvid (struct realtek_smi*,int,int) ;
 int rtl8366_set_vlan (struct realtek_smi*,int,int ,int ,int ) ;
 int stub1 (struct realtek_smi*,int) ;

void rtl8366_vlan_add(struct dsa_switch *ds, int port,
        const struct switchdev_obj_port_vlan *vlan)
{
 bool untagged = !!(vlan->flags & BRIDGE_VLAN_INFO_UNTAGGED);
 bool pvid = !!(vlan->flags & BRIDGE_VLAN_INFO_PVID);
 struct realtek_smi *smi = ds->priv;
 u32 member = 0;
 u32 untag = 0;
 u16 vid;
 int ret;

 for (vid = vlan->vid_begin; vid < vlan->vid_end; vid++)
  if (!smi->ops->is_vlan_valid(smi, vid))
   return;

 dev_info(smi->dev, "add VLAN on port %d, %s, %s\n",
   port,
   untagged ? "untagged" : "tagged",
   pvid ? " PVID" : "no PVID");

 if (dsa_is_dsa_port(ds, port) || dsa_is_cpu_port(ds, port))
  dev_err(smi->dev, "port is DSA or CPU port\n");

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
  int pvid_val = 0;

  dev_info(smi->dev, "add VLAN %04x\n", vid);
  member |= BIT(port);

  if (untagged)
   untag |= BIT(port);




  ret = rtl8366_get_pvid(smi, port, &pvid_val);
  if (ret < 0) {
   dev_err(smi->dev, "could not lookup PVID for port %d\n",
    port);
   return;
  }
  if (pvid_val == 0) {
   ret = rtl8366_set_pvid(smi, port, vid);
   if (ret < 0)
    return;
  }
 }

 ret = rtl8366_set_vlan(smi, port, member, untag, 0);
 if (ret)
  dev_err(smi->dev,
   "failed to set up VLAN %04x",
   vid);
}
