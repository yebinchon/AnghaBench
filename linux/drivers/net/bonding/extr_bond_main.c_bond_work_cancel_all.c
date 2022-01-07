
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bonding {int slave_arr_work; int mcast_work; int ad_work; int alb_work; int arp_work; int mii_work; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void bond_work_cancel_all(struct bonding *bond)
{
 cancel_delayed_work_sync(&bond->mii_work);
 cancel_delayed_work_sync(&bond->arp_work);
 cancel_delayed_work_sync(&bond->alb_work);
 cancel_delayed_work_sync(&bond->ad_work);
 cancel_delayed_work_sync(&bond->mcast_work);
 cancel_delayed_work_sync(&bond->slave_arr_work);
}
