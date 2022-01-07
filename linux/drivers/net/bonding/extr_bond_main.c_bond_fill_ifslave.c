
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {int link_failure_count; int link; TYPE_1__* dev; } ;
struct ifslave {int link_failure_count; int state; int link; int slave_name; } ;
struct TYPE_2__ {int name; } ;


 int bond_slave_state (struct slave*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void bond_fill_ifslave(struct slave *slave, struct ifslave *info)
{
 strcpy(info->slave_name, slave->dev->name);
 info->link = slave->link;
 info->state = bond_slave_state(slave);
 info->link_failure_count = slave->link_failure_count;
}
