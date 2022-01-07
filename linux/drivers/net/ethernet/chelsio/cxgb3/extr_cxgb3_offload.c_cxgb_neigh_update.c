
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {struct net_device* dev; } ;


 int BUG_ON (int) ;
 struct t3cdev* dev2t3cdev (struct net_device*) ;
 scalar_t__ is_offloading (struct net_device*) ;
 int t3_l2t_update (struct t3cdev*,struct neighbour*) ;

__attribute__((used)) static void cxgb_neigh_update(struct neighbour *neigh)
{
 struct net_device *dev;

 if (!neigh)
  return;
 dev = neigh->dev;
 if (dev && (is_offloading(dev))) {
  struct t3cdev *tdev = dev2t3cdev(dev);

  BUG_ON(!tdev);
  t3_l2t_update(tdev, neigh);
 }
}
