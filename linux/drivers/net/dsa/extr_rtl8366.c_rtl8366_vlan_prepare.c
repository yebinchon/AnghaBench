
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct realtek_smi {int dev; TYPE_1__* ops; } ;
struct dsa_switch {struct realtek_smi* priv; } ;
struct TYPE_2__ {int (* is_vlan_valid ) (struct realtek_smi*,scalar_t__) ;} ;


 int EINVAL ;
 int dev_info (int ,char*,scalar_t__,scalar_t__) ;
 int rtl8366_enable_vlan4k (struct realtek_smi*,int) ;
 int stub1 (struct realtek_smi*,scalar_t__) ;

int rtl8366_vlan_prepare(struct dsa_switch *ds, int port,
    const struct switchdev_obj_port_vlan *vlan)
{
 struct realtek_smi *smi = ds->priv;
 u16 vid;
 int ret;

 for (vid = vlan->vid_begin; vid < vlan->vid_end; vid++)
  if (!smi->ops->is_vlan_valid(smi, vid))
   return -EINVAL;

 dev_info(smi->dev, "prepare VLANs %04x..%04x\n",
   vlan->vid_begin, vlan->vid_end);





 ret = rtl8366_enable_vlan4k(smi, 1);
 if (ret)
  return ret;

 return 0;
}
