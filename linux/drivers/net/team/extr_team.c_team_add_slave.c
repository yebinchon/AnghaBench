
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int lock; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_change_features (struct net_device*) ;
 struct team* netdev_priv (struct net_device*) ;
 int team_port_add (struct team*,struct net_device*,struct netlink_ext_ack*) ;

__attribute__((used)) static int team_add_slave(struct net_device *dev, struct net_device *port_dev,
     struct netlink_ext_ack *extack)
{
 struct team *team = netdev_priv(dev);
 int err;

 mutex_lock(&team->lock);
 err = team_port_add(team, port_dev, extack);
 mutex_unlock(&team->lock);

 if (!err)
  netdev_change_features(dev);

 return err;
}
