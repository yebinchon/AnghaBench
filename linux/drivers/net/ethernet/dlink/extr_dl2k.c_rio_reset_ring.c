
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netdev_private {TYPE_2__* rx_ring; TYPE_1__* tx_ring; scalar_t__ old_tx; scalar_t__ old_rx; scalar_t__ cur_tx; scalar_t__ cur_rx; } ;
struct TYPE_4__ {scalar_t__ status; } ;
struct TYPE_3__ {int status; } ;


 int RX_RING_SIZE ;
 int TFDDone ;
 int TX_RING_SIZE ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void rio_reset_ring(struct netdev_private *np)
{
 int i;

 np->cur_rx = 0;
 np->cur_tx = 0;
 np->old_rx = 0;
 np->old_tx = 0;

 for (i = 0; i < TX_RING_SIZE; i++)
  np->tx_ring[i].status = cpu_to_le64(TFDDone);

 for (i = 0; i < RX_RING_SIZE; i++)
  np->rx_ring[i].status = 0;
}
