
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fm10k_intfc {int num_rx_queues; int num_tx_queues; TYPE_2__** tx_ring; TYPE_1__** rx_ring; } ;
struct TYPE_4__ {int reg_idx; } ;
struct TYPE_3__ {int reg_idx; } ;



__attribute__((used)) static void fm10k_cache_ring_rss(struct fm10k_intfc *interface)
{
 int i;

 for (i = 0; i < interface->num_rx_queues; i++)
  interface->rx_ring[i]->reg_idx = i;

 for (i = 0; i < interface->num_tx_queues; i++)
  interface->tx_ring[i]->reg_idx = i;
}
