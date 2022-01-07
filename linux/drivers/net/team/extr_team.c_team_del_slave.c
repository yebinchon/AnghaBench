
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int team_lock_key; int lock; } ;
struct net_device {int dummy; } ;


 int lockdep_register_key (int *) ;
 int lockdep_set_class (int *,int *) ;
 int lockdep_unregister_key (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_change_features (struct net_device*) ;
 struct team* netdev_priv (struct net_device*) ;
 scalar_t__ netif_is_team_master (struct net_device*) ;
 int team_port_del (struct team*,struct net_device*) ;

__attribute__((used)) static int team_del_slave(struct net_device *dev, struct net_device *port_dev)
{
 struct team *team = netdev_priv(dev);
 int err;

 mutex_lock(&team->lock);
 err = team_port_del(team, port_dev);
 mutex_unlock(&team->lock);

 if (err)
  return err;

 if (netif_is_team_master(port_dev)) {
  lockdep_unregister_key(&team->team_lock_key);
  lockdep_register_key(&team->team_lock_key);
  lockdep_set_class(&team->lock, &team->team_lock_key);
 }
 netdev_change_features(dev);

 return err;
}
