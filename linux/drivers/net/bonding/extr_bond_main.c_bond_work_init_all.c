
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bonding {int slave_arr_work; int ad_work; int arp_work; int mii_work; int alb_work; int mcast_work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int bond_3ad_state_machine_handler ;
 int bond_alb_monitor ;
 int bond_arp_monitor ;
 int bond_mii_monitor ;
 int bond_resend_igmp_join_requests_delayed ;
 int bond_slave_arr_handler ;

void bond_work_init_all(struct bonding *bond)
{
 INIT_DELAYED_WORK(&bond->mcast_work,
     bond_resend_igmp_join_requests_delayed);
 INIT_DELAYED_WORK(&bond->alb_work, bond_alb_monitor);
 INIT_DELAYED_WORK(&bond->mii_work, bond_mii_monitor);
 INIT_DELAYED_WORK(&bond->arp_work, bond_arp_monitor);
 INIT_DELAYED_WORK(&bond->ad_work, bond_3ad_state_machine_handler);
 INIT_DELAYED_WORK(&bond->slave_arr_work, bond_slave_arr_handler);
}
