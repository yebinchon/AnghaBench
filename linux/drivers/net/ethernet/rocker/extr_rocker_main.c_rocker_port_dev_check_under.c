
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {struct rocker* rocker; } ;
struct rocker {int dummy; } ;
struct net_device {int dummy; } ;


 struct rocker_port* netdev_priv (struct net_device const*) ;
 int rocker_port_dev_check (struct net_device const*) ;

__attribute__((used)) static bool rocker_port_dev_check_under(const struct net_device *dev,
     struct rocker *rocker)
{
 struct rocker_port *rocker_port;

 if (!rocker_port_dev_check(dev))
  return 0;

 rocker_port = netdev_priv(dev);
 if (rocker_port->rocker != rocker)
  return 0;

 return 1;
}
