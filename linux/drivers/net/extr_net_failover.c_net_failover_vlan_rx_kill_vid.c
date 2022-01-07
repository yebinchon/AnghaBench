
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_failover_info {int standby_dev; int primary_dev; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 struct net_failover_info* netdev_priv (struct net_device*) ;
 struct net_device* rcu_dereference (int ) ;
 int vlan_vid_del (struct net_device*,int ,int ) ;

__attribute__((used)) static int net_failover_vlan_rx_kill_vid(struct net_device *dev, __be16 proto,
      u16 vid)
{
 struct net_failover_info *nfo_info = netdev_priv(dev);
 struct net_device *slave_dev;

 slave_dev = rcu_dereference(nfo_info->primary_dev);
 if (slave_dev)
  vlan_vid_del(slave_dev, proto, vid);

 slave_dev = rcu_dereference(nfo_info->standby_dev);
 if (slave_dev)
  vlan_vid_del(slave_dev, proto, vid);

 return 0;
}
