
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dpaa2_eth_priv {int num_channels; TYPE_1__** channel; } ;
struct TYPE_2__ {int buf_count; } ;


 int DPAA2_ETH_BUFS_PER_CMD ;
 int DPAA2_ETH_NUM_BUFS ;
 int ENOMEM ;
 int add_bufs (struct dpaa2_eth_priv*,TYPE_1__*,int ) ;

__attribute__((used)) static int seed_pool(struct dpaa2_eth_priv *priv, u16 bpid)
{
 int i, j;
 int new_count;

 for (j = 0; j < priv->num_channels; j++) {
  for (i = 0; i < DPAA2_ETH_NUM_BUFS;
       i += DPAA2_ETH_BUFS_PER_CMD) {
   new_count = add_bufs(priv, priv->channel[j], bpid);
   priv->channel[j]->buf_count += new_count;

   if (new_count < DPAA2_ETH_BUFS_PER_CMD) {
    return -ENOMEM;
   }
  }
 }

 return 0;
}
