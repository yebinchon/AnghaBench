
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct realtek_smi {int vlan_enabled; int vlan4k_enabled; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable_vlan ) (struct realtek_smi*,int) ;int (* enable_vlan4k ) (struct realtek_smi*,int) ;} ;


 int stub1 (struct realtek_smi*,int) ;
 int stub2 (struct realtek_smi*,int) ;

int rtl8366_enable_vlan(struct realtek_smi *smi, bool enable)
{
 int ret;

 ret = smi->ops->enable_vlan(smi, enable);
 if (ret)
  return ret;

 smi->vlan_enabled = enable;




 if (!enable) {
  smi->vlan4k_enabled = 0;
  ret = smi->ops->enable_vlan4k(smi, 0);
 }

 return ret;
}
