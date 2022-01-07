
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifbond {int num_slaves; int miimon; int bond_mode; } ;
struct TYPE_2__ {int miimon; } ;
struct bonding {int slave_cnt; TYPE_1__ params; } ;


 int BOND_MODE (struct bonding*) ;

__attribute__((used)) static void bond_fill_ifbond(struct bonding *bond, struct ifbond *info)
{
 info->bond_mode = BOND_MODE(bond);
 info->miimon = bond->params.miimon;
 info->num_slaves = bond->slave_cnt;
}
