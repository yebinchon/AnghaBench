
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpaa2_eth_priv {int num_channels; TYPE_1__** channel; } ;
struct TYPE_2__ {int store; } ;


 int dpaa2_io_store_destroy (int ) ;

__attribute__((used)) static void free_rings(struct dpaa2_eth_priv *priv)
{
 int i;

 for (i = 0; i < priv->num_channels; i++)
  dpaa2_io_store_destroy(priv->channel[i]->store);
}
