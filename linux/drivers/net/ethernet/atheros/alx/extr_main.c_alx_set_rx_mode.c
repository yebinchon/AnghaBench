
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __alx_set_rx_mode (struct net_device*) ;

__attribute__((used)) static void alx_set_rx_mode(struct net_device *netdev)
{
 __alx_set_rx_mode(netdev);
}
