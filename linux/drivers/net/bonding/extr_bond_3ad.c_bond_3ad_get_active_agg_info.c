
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bonding {int dummy; } ;
struct ad_info {int dummy; } ;


 int __bond_3ad_get_active_agg_info (struct bonding*,struct ad_info*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int bond_3ad_get_active_agg_info(struct bonding *bond, struct ad_info *ad_info)
{
 int ret;

 rcu_read_lock();
 ret = __bond_3ad_get_active_agg_info(bond, ad_info);
 rcu_read_unlock();

 return ret;
}
