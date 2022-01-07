
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct realtek_smi {int vlan_enabled; int vlan4k_enabled; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable_vlan ) (struct realtek_smi*,int) ;int (* enable_vlan4k ) (struct realtek_smi*,int) ;} ;


 int stub1 (struct realtek_smi*,int) ;
 int stub2 (struct realtek_smi*,int) ;

int rtl8366_enable_vlan4k(struct realtek_smi *smi, bool enable)
{
 int ret;





 if (enable) {

  ret = smi->ops->enable_vlan(smi, 1);
  if (ret)
   return ret;

  smi->vlan_enabled = 1;
 }

 ret = smi->ops->enable_vlan4k(smi, enable);
 if (ret)
  return ret;

 smi->vlan4k_enabled = enable;
 return 0;
}
