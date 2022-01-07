
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int collisions; int tx_fifo_errors; int tx_errors; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {unsigned int tx_tail; } ;


 unsigned long TXHDR_TRANSMIT ;
 unsigned long TXSTAT_16COLLISIONS ;
 unsigned long TXSTAT_BABBLED ;
 unsigned long TXSTAT_DONE ;
 int buffer_read ;
 unsigned long ether3_readlong (struct net_device*) ;
 int ether3_setbuffer (struct net_device*,int ,unsigned int) ;
 int netif_wake_queue (struct net_device*) ;
 TYPE_2__* priv (struct net_device*) ;

__attribute__((used)) static void ether3_tx(struct net_device *dev)
{
 unsigned int tx_tail = priv(dev)->tx_tail;
 int max_work = 14;

 do {
      unsigned long status;




      ether3_setbuffer(dev, buffer_read, tx_tail * 0x600);
      status = ether3_readlong(dev);




  if ((status & (TXSTAT_DONE | TXHDR_TRANSMIT)) !=
      (TXSTAT_DONE | TXHDR_TRANSMIT))
   break;




  if (!(status & (TXSTAT_BABBLED | TXSTAT_16COLLISIONS)))
   dev->stats.tx_packets++;
  else {
   dev->stats.tx_errors++;
   if (status & TXSTAT_16COLLISIONS)
    dev->stats.collisions += 16;
   if (status & TXSTAT_BABBLED)
    dev->stats.tx_fifo_errors++;
  }

  tx_tail = (tx_tail + 1) & 15;
 } while (--max_work);

 if (priv(dev)->tx_tail != tx_tail) {
  priv(dev)->tx_tail = tx_tail;
  netif_wake_queue(dev);
 }
}
