
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8366_vlan_mc {scalar_t__ fid; scalar_t__ untag; scalar_t__ member; scalar_t__ priority; scalar_t__ vid; } ;
struct realtek_smi {int num_vlan_mc; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_vlan_mc ) (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;} ;


 int rtl8366_enable_vlan (struct realtek_smi*,int) ;
 int rtl8366_enable_vlan4k (struct realtek_smi*,int) ;
 int stub1 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;

int rtl8366_reset_vlan(struct realtek_smi *smi)
{
 struct rtl8366_vlan_mc vlanmc;
 int ret;
 int i;

 rtl8366_enable_vlan(smi, 0);
 rtl8366_enable_vlan4k(smi, 0);


 vlanmc.vid = 0;
 vlanmc.priority = 0;
 vlanmc.member = 0;
 vlanmc.untag = 0;
 vlanmc.fid = 0;
 for (i = 0; i < smi->num_vlan_mc; i++) {
  ret = smi->ops->set_vlan_mc(smi, i, &vlanmc);
  if (ret)
   return ret;
 }

 return 0;
}
