
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {int dummy; } ;
struct port {int dummy; } ;
struct bonding {int dummy; } ;
struct aggregator {int dummy; } ;
struct TYPE_2__ {struct aggregator aggregator; } ;


 TYPE_1__* SLAVE_AD_INFO (struct slave*) ;
 struct bonding* __get_bond_by_port (struct port*) ;
 struct slave* bond_first_slave_rcu (struct bonding*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline struct aggregator *__get_first_agg(struct port *port)
{
 struct bonding *bond = __get_bond_by_port(port);
 struct slave *first_slave;
 struct aggregator *agg;


 if (bond == ((void*)0))
  return ((void*)0);

 rcu_read_lock();
 first_slave = bond_first_slave_rcu(bond);
 agg = first_slave ? &(SLAVE_AD_INFO(first_slave)->aggregator) : ((void*)0);
 rcu_read_unlock();

 return agg;
}
