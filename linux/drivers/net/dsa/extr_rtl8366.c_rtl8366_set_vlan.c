
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct rtl8366_vlan_mc {int vid; void* fid; void* untag; void* member; } ;
struct rtl8366_vlan_4k {void* fid; void* untag; void* member; } ;
struct realtek_smi {int num_vlan_mc; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_vlan_4k ) (struct realtek_smi*,int,struct rtl8366_vlan_4k*) ;int (* set_vlan_4k ) (struct realtek_smi*,struct rtl8366_vlan_4k*) ;int (* get_vlan_mc ) (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;int (* set_vlan_mc ) (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;} ;


 int stub1 (struct realtek_smi*,int,struct rtl8366_vlan_4k*) ;
 int stub2 (struct realtek_smi*,struct rtl8366_vlan_4k*) ;
 int stub3 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;
 int stub4 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;

int rtl8366_set_vlan(struct realtek_smi *smi, int vid, u32 member,
       u32 untag, u32 fid)
{
 struct rtl8366_vlan_4k vlan4k;
 int ret;
 int i;


 ret = smi->ops->get_vlan_4k(smi, vid, &vlan4k);
 if (ret)
  return ret;

 vlan4k.member = member;
 vlan4k.untag = untag;
 vlan4k.fid = fid;
 ret = smi->ops->set_vlan_4k(smi, &vlan4k);
 if (ret)
  return ret;


 for (i = 0; i < smi->num_vlan_mc; i++) {
  struct rtl8366_vlan_mc vlanmc;

  ret = smi->ops->get_vlan_mc(smi, i, &vlanmc);
  if (ret)
   return ret;

  if (vid == vlanmc.vid) {

   vlanmc.member = member;
   vlanmc.untag = untag;
   vlanmc.fid = fid;

   ret = smi->ops->set_vlan_mc(smi, i, &vlanmc);
   break;
  }
 }

 return ret;
}
