
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dummy; } ;
struct bonding {int dummy; } ;


 int ASSERT_RTNL () ;
 struct slave* __rlb_next_rx_slave (struct bonding*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct slave *rlb_next_rx_slave(struct bonding *bond)
{
 struct slave *rx_slave;

 ASSERT_RTNL();

 rcu_read_lock();
 rx_slave = __rlb_next_rx_slave(bond);
 rcu_read_unlock();

 return rx_slave;
}
