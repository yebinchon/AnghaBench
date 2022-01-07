
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bonding {TYPE_1__* dev; } ;
struct TYPE_2__ {int ** sysfs_groups; } ;


 int bonding_group ;

void bond_prepare_sysfs_group(struct bonding *bond)
{
 bond->dev->sysfs_groups[0] = &bonding_group;
}
