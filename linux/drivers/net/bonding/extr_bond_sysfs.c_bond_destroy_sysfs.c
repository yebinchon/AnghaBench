
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bond_net {int net; int class_attr_bonding_masters; } ;


 int netdev_class_remove_file_ns (int *,int ) ;

void bond_destroy_sysfs(struct bond_net *bn)
{
 netdev_class_remove_file_ns(&bn->class_attr_bonding_masters, bn->net);
}
