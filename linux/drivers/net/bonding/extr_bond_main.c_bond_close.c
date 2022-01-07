
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bonding {int * recv_probe; scalar_t__ send_peer_notif; } ;


 int bond_alb_deinitialize (struct bonding*) ;
 scalar_t__ bond_is_lb (struct bonding*) ;
 int bond_work_cancel_all (struct bonding*) ;
 struct bonding* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bond_close(struct net_device *bond_dev)
{
 struct bonding *bond = netdev_priv(bond_dev);

 bond_work_cancel_all(bond);
 bond->send_peer_notif = 0;
 if (bond_is_lb(bond))
  bond_alb_deinitialize(bond);
 bond->recv_probe = ((void*)0);

 return 0;
}
