
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int rxfree; } ;
struct net_device {int dummy; } ;


 int TSI108_RXRING_LEN ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int tsi108_rx_int (struct net_device*) ;

__attribute__((used)) static void tsi108_check_rxring(struct net_device *dev)
{
 struct tsi108_prv_data *data = netdev_priv(dev);






 if (netif_running(dev) && data->rxfree < TSI108_RXRING_LEN / 4)
  tsi108_rx_int(dev);
}
