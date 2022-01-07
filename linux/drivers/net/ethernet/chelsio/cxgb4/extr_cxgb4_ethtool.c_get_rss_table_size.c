
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port_info {int rss_size; } ;
struct net_device {int dummy; } ;


 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 get_rss_table_size(struct net_device *dev)
{
 const struct port_info *pi = netdev_priv(dev);

 return pi->rss_size;
}
