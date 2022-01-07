
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neigh_parms {int neigh_setup; struct net_device* dev; } ;


 int bond_neigh_init ;

__attribute__((used)) static int bond_neigh_setup(struct net_device *dev,
       struct neigh_parms *parms)
{

 if (parms->dev == dev)
  parms->neigh_setup = bond_neigh_init;

 return 0;
}
