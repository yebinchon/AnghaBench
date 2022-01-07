
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct neighbour {struct net_device* dev; } ;
struct device {int * driver; } ;
struct TYPE_4__ {int driver; } ;


 TYPE_2__ cxgb4_driver ;
 int dev_get_drvdata (struct device const*) ;
 scalar_t__ is_vlan_dev (struct net_device const*) ;
 int t4_l2t_update (int ,struct neighbour*) ;
 struct net_device* vlan_dev_real_dev (struct net_device const*) ;

__attribute__((used)) static void check_neigh_update(struct neighbour *neigh)
{
 const struct device *parent;
 const struct net_device *netdev = neigh->dev;

 if (is_vlan_dev(netdev))
  netdev = vlan_dev_real_dev(netdev);
 parent = netdev->dev.parent;
 if (parent && parent->driver == &cxgb4_driver.driver)
  t4_l2t_update(dev_get_drvdata(parent), neigh);
}
