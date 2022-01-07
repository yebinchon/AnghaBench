
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8366_vlan_mc {int vid; } ;
struct realtek_smi {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_mc_index ) (struct realtek_smi*,int,int*) ;int (* get_vlan_mc ) (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;} ;


 int stub1 (struct realtek_smi*,int,int*) ;
 int stub2 (struct realtek_smi*,int,struct rtl8366_vlan_mc*) ;

int rtl8366_get_pvid(struct realtek_smi *smi, int port, int *val)
{
 struct rtl8366_vlan_mc vlanmc;
 int ret;
 int index;

 ret = smi->ops->get_mc_index(smi, port, &index);
 if (ret)
  return ret;

 ret = smi->ops->get_vlan_mc(smi, index, &vlanmc);
 if (ret)
  return ret;

 *val = vlanmc.vid;
 return 0;
}
