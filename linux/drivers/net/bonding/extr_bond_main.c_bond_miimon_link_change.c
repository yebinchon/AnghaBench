
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dummy; } ;
struct bonding {int dummy; } ;


 int BOND_MODE (struct bonding*) ;




 int bond_3ad_handle_link_change (struct slave*,char) ;
 int bond_alb_handle_link_change (struct bonding*,struct slave*,char) ;
 int bond_update_slave_arr (struct bonding*,int *) ;

__attribute__((used)) static void bond_miimon_link_change(struct bonding *bond,
        struct slave *slave,
        char link)
{
 switch (BOND_MODE(bond)) {
 case 131:
  bond_3ad_handle_link_change(slave, link);
  break;
 case 129:
 case 130:
  bond_alb_handle_link_change(bond, slave, link);
  break;
 case 128:
  bond_update_slave_arr(bond, ((void*)0));
  break;
 }
}
