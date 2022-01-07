
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct rtl8366_vlan_mc {scalar_t__ vid; scalar_t__ fid; scalar_t__ untag; scalar_t__ member; scalar_t__ priority; } ;
struct realtek_smi {int num_vlan_mc; int dev; TYPE_1__* ops; } ;
struct dsa_switch {struct realtek_smi* priv; } ;
struct TYPE_2__ {int (* get_vlan_mc ) (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;int (* set_vlan_mc ) (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;} ;


 int dev_err (int ,char*,scalar_t__) ;
 int dev_info (int ,char*,scalar_t__) ;
 int stub1 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;
 int stub2 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;

int rtl8366_vlan_del(struct dsa_switch *ds, int port,
       const struct switchdev_obj_port_vlan *vlan)
{
 struct realtek_smi *smi = ds->priv;
 u16 vid;
 int ret;

 dev_info(smi->dev, "del VLAN on port %d\n", port);

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
  int i;

  dev_info(smi->dev, "del VLAN %04x\n", vid);

  for (i = 0; i < smi->num_vlan_mc; i++) {
   struct rtl8366_vlan_mc vlanmc;

   ret = smi->ops->get_vlan_mc(smi, i, &vlanmc);
   if (ret)
    return ret;

   if (vid == vlanmc.vid) {

    vlanmc.vid = 0;
    vlanmc.priority = 0;
    vlanmc.member = 0;
    vlanmc.untag = 0;
    vlanmc.fid = 0;

    ret = smi->ops->set_vlan_mc(smi, i, &vlanmc);
    if (ret) {
     dev_err(smi->dev,
      "failed to remove VLAN %04x\n",
      vid);
     return ret;
    }
    break;
   }
  }
 }

 return 0;
}
