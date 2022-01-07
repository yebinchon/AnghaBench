
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {int dummy; } ;


 int jme_restart_an (struct jme_adapter*) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
jme_nway_reset(struct net_device *netdev)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 jme_restart_an(jme);
 return 0;
}
