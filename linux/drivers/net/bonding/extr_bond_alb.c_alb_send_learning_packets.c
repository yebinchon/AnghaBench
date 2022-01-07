
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slave {int dummy; } ;
struct bonding {int dev; } ;
struct alb_walk_data {int strict_match; struct bonding* bond; struct slave* slave; int * mac_addr; } ;


 int alb_send_lp_vid (struct slave*,int *,int ,int ) ;
 int alb_upper_dev_walk ;
 struct bonding* bond_get_bond_by_slave (struct slave*) ;
 int netdev_walk_all_upper_dev_rcu (int ,int ,struct alb_walk_data*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void alb_send_learning_packets(struct slave *slave, u8 mac_addr[],
          bool strict_match)
{
 struct bonding *bond = bond_get_bond_by_slave(slave);
 struct alb_walk_data data = {
  .strict_match = strict_match,
  .mac_addr = mac_addr,
  .slave = slave,
  .bond = bond,
 };


 alb_send_lp_vid(slave, mac_addr, 0, 0);




 rcu_read_lock();
 netdev_walk_all_upper_dev_rcu(bond->dev, alb_upper_dev_walk, &data);
 rcu_read_unlock();
}
