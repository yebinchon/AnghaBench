
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bonding {int dummy; } ;


 int BOND_MAX_ARP_TARGETS ;
 int _bond_options_arp_ip_target_set (struct bonding*,int,int ,int ) ;

void bond_option_arp_ip_targets_clear(struct bonding *bond)
{
 int i;

 for (i = 0; i < BOND_MAX_ARP_TARGETS; i++)
  _bond_options_arp_ip_target_set(bond, i, 0, 0);
}
