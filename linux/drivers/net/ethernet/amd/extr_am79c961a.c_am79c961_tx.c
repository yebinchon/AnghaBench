
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int collisions; short tx_bytes; int tx_packets; int tx_fifo_errors; int tx_carrier_errors; int tx_window_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct dev_priv {int txtail; int txhead; int txhdr; } ;


 int TMD_ERR ;
 int TMD_OWN ;
 int TST_LCAR ;
 int TST_LCOL ;
 int TST_RTRY ;
 int TST_UFLO ;
 int TX_BUFFERS ;
 void* am_readword (struct net_device*,int) ;
 int am_writeword (struct net_device*,int,int ) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void
am79c961_tx(struct net_device *dev, struct dev_priv *priv)
{
 do {
  short len;
  u_int hdraddr;
  u_int status;

  hdraddr = priv->txhdr + (priv->txtail << 3);
  status = am_readword (dev, hdraddr + 2);
  if (status & TMD_OWN)
   break;

  priv->txtail ++;
  if (priv->txtail >= TX_BUFFERS)
   priv->txtail = 0;

  if (status & TMD_ERR) {
   u_int status2;

   dev->stats.tx_errors++;

   status2 = am_readword (dev, hdraddr + 6);




   am_writeword (dev, hdraddr + 6, 0);

   if (status2 & TST_RTRY)
    dev->stats.collisions += 16;
   if (status2 & TST_LCOL)
    dev->stats.tx_window_errors++;
   if (status2 & TST_LCAR)
    dev->stats.tx_carrier_errors++;
   if (status2 & TST_UFLO)
    dev->stats.tx_fifo_errors++;
   continue;
  }
  dev->stats.tx_packets++;
  len = am_readword (dev, hdraddr + 4);
  dev->stats.tx_bytes += -len;
 } while (priv->txtail != priv->txhead);

 netif_wake_queue(dev);
}
