
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sc92031_priv {int rx_loss; } ;
struct TYPE_2__ {int rx_crc_errors; int rx_frame_errors; int rx_length_errors; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 unsigned int MAX_ETH_FRAME_SIZE ;
 int RxBadAlign ;
 int RxCRCOK ;
 int RxHugeFrame ;
 int RxSmallFrame ;
 int RxStatesOK ;
 struct sc92031_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void _sc92031_rx_tasklet_error(struct net_device *dev,
          u32 rx_status, unsigned rx_size)
{
 if(rx_size > (MAX_ETH_FRAME_SIZE + 4) || rx_size < 16) {
  dev->stats.rx_errors++;
  dev->stats.rx_length_errors++;
 }

 if (!(rx_status & RxStatesOK)) {
  dev->stats.rx_errors++;

  if (rx_status & (RxHugeFrame | RxSmallFrame))
   dev->stats.rx_length_errors++;

  if (rx_status & RxBadAlign)
   dev->stats.rx_frame_errors++;

  if (!(rx_status & RxCRCOK))
   dev->stats.rx_crc_errors++;
 } else {
  struct sc92031_priv *priv = netdev_priv(dev);
  priv->rx_loss++;
 }
}
