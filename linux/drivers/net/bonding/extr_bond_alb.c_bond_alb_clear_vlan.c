
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rlb_enabled; } ;
struct bonding {TYPE_1__ alb_info; } ;


 int rlb_clear_vlan (struct bonding*,unsigned short) ;

void bond_alb_clear_vlan(struct bonding *bond, unsigned short vlan_id)
{
 if (bond->alb_info.rlb_enabled)
  rlb_clear_vlan(bond, vlan_id);
}
