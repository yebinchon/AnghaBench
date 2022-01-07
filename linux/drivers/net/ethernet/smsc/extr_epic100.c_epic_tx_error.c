
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int tx_fifo_errors; int tx_window_errors; int tx_carrier_errors; int tx_aborted_errors; int tx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct epic_private {int dummy; } ;


 int debug ;
 int netdev_dbg (struct net_device*,char*,int) ;

__attribute__((used)) static void epic_tx_error(struct net_device *dev, struct epic_private *ep,
     int status)
{
 struct net_device_stats *stats = &dev->stats;



 if (debug > 1)
  netdev_dbg(dev, "Transmit error, Tx status %8.8x.\n",
      status);

 stats->tx_errors++;
 if (status & 0x1050)
  stats->tx_aborted_errors++;
 if (status & 0x0008)
  stats->tx_carrier_errors++;
 if (status & 0x0040)
  stats->tx_window_errors++;
 if (status & 0x0010)
  stats->tx_fifo_errors++;
}
