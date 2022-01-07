
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;
struct bond_net {int net; TYPE_2__ class_attr_bonding_masters; } ;


 int EEXIST ;
 scalar_t__ __dev_get_by_name (int ,int ) ;
 TYPE_2__ class_attr_bonding_masters ;
 int netdev_class_create_file_ns (TYPE_2__*,int ) ;
 int pr_err (char*,int ) ;
 int sysfs_attr_init (TYPE_1__*) ;

int bond_create_sysfs(struct bond_net *bn)
{
 int ret;

 bn->class_attr_bonding_masters = class_attr_bonding_masters;
 sysfs_attr_init(&bn->class_attr_bonding_masters.attr);

 ret = netdev_class_create_file_ns(&bn->class_attr_bonding_masters,
       bn->net);
 if (ret == -EEXIST) {

  if (__dev_get_by_name(bn->net,
          class_attr_bonding_masters.attr.name))
   pr_err("network device named %s already exists in sysfs\n",
          class_attr_bonding_masters.attr.name);
  ret = 0;
 }

 return ret;

}
