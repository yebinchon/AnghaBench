
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {TYPE_2__* dev; } ;
struct net_device_ops {int (* ndo_neigh_setup ) (TYPE_2__*,struct neigh_parms*) ;} ;
struct neighbour {TYPE_1__* parms; int dev; } ;
struct neigh_parms {int (* neigh_setup ) (struct neighbour*) ;int * neigh_cleanup; } ;
struct bonding {int dummy; } ;
struct TYPE_4__ {struct net_device_ops* netdev_ops; } ;
struct TYPE_3__ {int * neigh_cleanup; } ;


 struct slave* bond_first_slave (struct bonding*) ;
 struct bonding* netdev_priv (int ) ;
 int stub1 (TYPE_2__*,struct neigh_parms*) ;
 int stub2 (struct neighbour*) ;

__attribute__((used)) static int bond_neigh_init(struct neighbour *n)
{
 struct bonding *bond = netdev_priv(n->dev);
 const struct net_device_ops *slave_ops;
 struct neigh_parms parms;
 struct slave *slave;
 int ret;

 slave = bond_first_slave(bond);
 if (!slave)
  return 0;
 slave_ops = slave->dev->netdev_ops;
 if (!slave_ops->ndo_neigh_setup)
  return 0;

 parms.neigh_setup = ((void*)0);
 parms.neigh_cleanup = ((void*)0);
 ret = slave_ops->ndo_neigh_setup(slave->dev, &parms);
 if (ret)
  return ret;






 n->parms->neigh_cleanup = parms.neigh_cleanup;

 if (!parms.neigh_setup)
  return 0;

 return parms.neigh_setup(n);
}
