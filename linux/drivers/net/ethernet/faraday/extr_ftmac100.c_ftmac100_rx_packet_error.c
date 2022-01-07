
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_length_errors; int rx_crc_errors; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftmac100_rxdes {int dummy; } ;
struct ftmac100 {struct net_device* netdev; } ;


 int ftmac100_rxdes_crc_error (struct ftmac100_rxdes*) ;
 int ftmac100_rxdes_frame_too_long (struct ftmac100_rxdes*) ;
 int ftmac100_rxdes_odd_nibble (struct ftmac100_rxdes*) ;
 int ftmac100_rxdes_runt (struct ftmac100_rxdes*) ;
 int ftmac100_rxdes_rx_error (struct ftmac100_rxdes*) ;
 scalar_t__ net_ratelimit () ;
 int netdev_info (struct net_device*,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool ftmac100_rx_packet_error(struct ftmac100 *priv,
         struct ftmac100_rxdes *rxdes)
{
 struct net_device *netdev = priv->netdev;
 bool error = 0;

 if (unlikely(ftmac100_rxdes_rx_error(rxdes))) {
  if (net_ratelimit())
   netdev_info(netdev, "rx err\n");

  netdev->stats.rx_errors++;
  error = 1;
 }

 if (unlikely(ftmac100_rxdes_crc_error(rxdes))) {
  if (net_ratelimit())
   netdev_info(netdev, "rx crc err\n");

  netdev->stats.rx_crc_errors++;
  error = 1;
 }

 if (unlikely(ftmac100_rxdes_frame_too_long(rxdes))) {
  if (net_ratelimit())
   netdev_info(netdev, "rx frame too long\n");

  netdev->stats.rx_length_errors++;
  error = 1;
 } else if (unlikely(ftmac100_rxdes_runt(rxdes))) {
  if (net_ratelimit())
   netdev_info(netdev, "rx runt\n");

  netdev->stats.rx_length_errors++;
  error = 1;
 } else if (unlikely(ftmac100_rxdes_odd_nibble(rxdes))) {
  if (net_ratelimit())
   netdev_info(netdev, "rx odd nibble\n");

  netdev->stats.rx_length_errors++;
  error = 1;
 }

 return error;
}
