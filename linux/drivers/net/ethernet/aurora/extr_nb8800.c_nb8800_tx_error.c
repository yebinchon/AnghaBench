
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tx_errors; int tx_fifo_errors; int tx_dropped; int collisions; } ;
struct net_device {TYPE_1__ stats; } ;


 int TX_FIFO_UNDERRUN ;
 int TX_LATE_COLLISION ;
 int TX_PACKET_DROPPED ;

__attribute__((used)) static void nb8800_tx_error(struct net_device *dev, u32 report)
{
 if (report & TX_LATE_COLLISION)
  dev->stats.collisions++;

 if (report & TX_PACKET_DROPPED)
  dev->stats.tx_dropped++;

 if (report & TX_FIFO_UNDERRUN)
  dev->stats.tx_fifo_errors++;

 dev->stats.tx_errors++;
}
