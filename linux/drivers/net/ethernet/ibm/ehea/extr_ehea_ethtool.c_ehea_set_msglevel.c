
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ehea_port {int msg_enable; } ;


 struct ehea_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ehea_set_msglevel(struct net_device *dev, u32 value)
{
 struct ehea_port *port = netdev_priv(dev);
 port->msg_enable = value;
}
