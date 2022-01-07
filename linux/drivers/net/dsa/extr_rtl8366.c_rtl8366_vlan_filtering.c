
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8366_vlan_4k {int untag; int member; } ;
struct realtek_smi {TYPE_1__* ops; int dev; } ;
struct dsa_switch {struct realtek_smi* priv; } ;
struct TYPE_2__ {int (* get_vlan_4k ) (struct realtek_smi*,int,struct rtl8366_vlan_4k*) ;int (* is_vlan_valid ) (struct realtek_smi*,int) ;} ;


 int EINVAL ;
 int dev_info (int ,char*,char*,int) ;
 int rtl8366_set_vlan (struct realtek_smi*,int,int ,int ,int) ;
 int stub1 (struct realtek_smi*,int) ;
 int stub2 (struct realtek_smi*,int,struct rtl8366_vlan_4k*) ;

int rtl8366_vlan_filtering(struct dsa_switch *ds, int port, bool vlan_filtering)
{
 struct realtek_smi *smi = ds->priv;
 struct rtl8366_vlan_4k vlan4k;
 int ret;


 if (!smi->ops->is_vlan_valid(smi, port + 1))
  return -EINVAL;

 dev_info(smi->dev, "%s filtering on port %d\n",
   vlan_filtering ? "enable" : "disable",
   port);





 ret = smi->ops->get_vlan_4k(smi, port + 1, &vlan4k);
 if (ret)
  return ret;


 ret = rtl8366_set_vlan(smi, port + 1,
          vlan4k.member,
          vlan4k.untag,
          1);
 if (ret)
  return ret;

 return 0;
}
