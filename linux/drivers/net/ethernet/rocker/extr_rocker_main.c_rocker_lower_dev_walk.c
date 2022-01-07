
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_walk_data {int port; int rocker; } ;
struct net_device {int dummy; } ;


 int netdev_priv (struct net_device*) ;
 scalar_t__ rocker_port_dev_check_under (struct net_device*,int ) ;

__attribute__((used)) static int rocker_lower_dev_walk(struct net_device *lower_dev, void *_data)
{
 struct rocker_walk_data *data = _data;
 int ret = 0;

 if (rocker_port_dev_check_under(lower_dev, data->rocker)) {
  data->port = netdev_priv(lower_dev);
  ret = 1;
 }

 return ret;
}
