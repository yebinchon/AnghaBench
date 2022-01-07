
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cfhsi {int list; } ;


 int ASSERT_RTNL () ;
 int cfhsi_get_device ;
 int list_del (int *) ;
 struct cfhsi* netdev_priv (struct net_device*) ;
 int symbol_put (int ) ;

__attribute__((used)) static void cfhsi_uninit(struct net_device *dev)
{
 struct cfhsi *cfhsi = netdev_priv(dev);
 ASSERT_RTNL();
 symbol_put(cfhsi_get_device);
 list_del(&cfhsi->list);
}
