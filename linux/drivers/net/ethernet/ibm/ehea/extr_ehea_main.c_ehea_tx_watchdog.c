
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ehea_port {int dummy; } ;


 int __EHEA_STOP_XFER ;
 int ehea_driver_flags ;
 int ehea_schedule_port_reset (struct ehea_port*) ;
 struct ehea_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ehea_tx_watchdog(struct net_device *dev)
{
 struct ehea_port *port = netdev_priv(dev);

 if (netif_carrier_ok(dev) &&
     !test_bit(__EHEA_STOP_XFER, &ehea_driver_flags))
  ehea_schedule_port_reset(port);
}
