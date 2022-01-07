
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ehea_port {int stats_work; int port_lock; } ;


 int ehea_up (struct net_device*) ;
 int ifup ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ehea_port* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_info (struct ehea_port*,int ,struct net_device*,char*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int port_napi_enable (struct ehea_port*) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int ehea_open(struct net_device *dev)
{
 int ret;
 struct ehea_port *port = netdev_priv(dev);

 mutex_lock(&port->port_lock);

 netif_info(port, ifup, dev, "enabling port\n");

 netif_carrier_off(dev);

 ret = ehea_up(dev);
 if (!ret) {
  port_napi_enable(port);
  netif_tx_start_all_queues(dev);
 }

 mutex_unlock(&port->port_lock);
 schedule_delayed_work(&port->stats_work,
         round_jiffies_relative(msecs_to_jiffies(1000)));

 return ret;
}
