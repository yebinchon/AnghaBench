
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {int dummy; } ;
struct TYPE_3__ {scalar_t__ min_links; } ;
struct bonding {int dev; TYPE_1__ params; } ;
struct aggregator {int dummy; } ;
struct TYPE_4__ {int aggregator; } ;


 TYPE_2__* SLAVE_AD_INFO (struct slave*) ;
 scalar_t__ __agg_active_ports (struct aggregator*) ;
 struct aggregator* __get_active_agg (int *) ;
 struct slave* bond_first_slave_rcu (struct bonding*) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int bond_3ad_set_carrier(struct bonding *bond)
{
 struct aggregator *active;
 struct slave *first_slave;
 int ret = 1;

 rcu_read_lock();
 first_slave = bond_first_slave_rcu(bond);
 if (!first_slave) {
  ret = 0;
  goto out;
 }
 active = __get_active_agg(&(SLAVE_AD_INFO(first_slave)->aggregator));
 if (active) {

  if (__agg_active_ports(active) < bond->params.min_links) {
   if (netif_carrier_ok(bond->dev)) {
    netif_carrier_off(bond->dev);
    goto out;
   }
  } else if (!netif_carrier_ok(bond->dev)) {
   netif_carrier_on(bond->dev);
   goto out;
  }
 } else if (netif_carrier_ok(bond->dev)) {
  netif_carrier_off(bond->dev);
 }
out:
 rcu_read_unlock();
 return ret;
}
