
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftmac100_rxdes {int dummy; } ;
struct ftmac100 {struct net_device* netdev; } ;


 struct ftmac100_rxdes* ftmac100_current_rxdes (struct ftmac100*) ;
 int ftmac100_rx_pointer_advance (struct ftmac100*) ;
 scalar_t__ ftmac100_rxdes_last_segment (struct ftmac100_rxdes*) ;
 int ftmac100_rxdes_owned_by_dma (struct ftmac100_rxdes*) ;
 int ftmac100_rxdes_set_dma_own (struct ftmac100_rxdes*) ;
 scalar_t__ net_ratelimit () ;
 int netdev_dbg (struct net_device*,char*,struct ftmac100_rxdes*) ;

__attribute__((used)) static void ftmac100_rx_drop_packet(struct ftmac100 *priv)
{
 struct net_device *netdev = priv->netdev;
 struct ftmac100_rxdes *rxdes = ftmac100_current_rxdes(priv);
 bool done = 0;

 if (net_ratelimit())
  netdev_dbg(netdev, "drop packet %p\n", rxdes);

 do {
  if (ftmac100_rxdes_last_segment(rxdes))
   done = 1;

  ftmac100_rxdes_set_dma_own(rxdes);
  ftmac100_rx_pointer_advance(priv);
  rxdes = ftmac100_current_rxdes(priv);
 } while (!done && !ftmac100_rxdes_owned_by_dma(rxdes));

 netdev->stats.rx_dropped++;
}
