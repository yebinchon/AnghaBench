
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {scalar_t__ link; int duplex; int speed; } ;
struct TYPE_2__ {int primary_reselect; } ;
struct bonding {int force_primary; TYPE_1__ params; int dev; int curr_active_slave; int primary_slave; } ;


 scalar_t__ BOND_LINK_UP ;



 int netdev_err (int ,char*,int) ;
 struct slave* rtnl_dereference (int ) ;

__attribute__((used)) static struct slave *bond_choose_primary_or_current(struct bonding *bond)
{
 struct slave *prim = rtnl_dereference(bond->primary_slave);
 struct slave *curr = rtnl_dereference(bond->curr_active_slave);

 if (!prim || prim->link != BOND_LINK_UP) {
  if (!curr || curr->link != BOND_LINK_UP)
   return ((void*)0);
  return curr;
 }

 if (bond->force_primary) {
  bond->force_primary = 0;
  return prim;
 }

 if (!curr || curr->link != BOND_LINK_UP)
  return prim;


 switch (bond->params.primary_reselect) {
 case 130:
  return prim;
 case 129:
  if (prim->speed < curr->speed)
   return curr;
  if (prim->speed == curr->speed && prim->duplex <= curr->duplex)
   return curr;
  return prim;
 case 128:
  return curr;
 default:
  netdev_err(bond->dev, "impossible primary_reselect %d\n",
      bond->params.primary_reselect);
  return curr;
 }
}
