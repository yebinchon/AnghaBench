
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct gve_tx_ring {TYPE_1__* q_resources; } ;
struct gve_priv {int * counter_array; } ;
typedef int __be32 ;
struct TYPE_2__ {int counter_index; } ;


 int READ_ONCE (int ) ;
 size_t be32_to_cpu (int ) ;

__be32 gve_tx_load_event_counter(struct gve_priv *priv,
     struct gve_tx_ring *tx)
{
 u32 counter_index = be32_to_cpu((tx->q_resources->counter_index));

 return READ_ONCE(priv->counter_array[counter_index]);
}
