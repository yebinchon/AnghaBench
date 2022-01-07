
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_tx_desc {int dummy; } ;
struct TYPE_2__ {int prev_pkt; } ;
struct ice_ring {int count; int * tx_buf; TYPE_1__ tx_stats; scalar_t__ next_to_clean; scalar_t__ next_to_use; int size; int desc; int dma; struct device* dev; } ;
struct device {int dummy; } ;


 int ALIGN (int,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int WARN_ON (int *) ;
 int dev_err (struct device*,char*,int ) ;
 int devm_kfree (struct device*,int *) ;
 int * devm_kzalloc (struct device*,int,int ) ;
 int dmam_alloc_coherent (struct device*,int ,int *,int ) ;

int ice_setup_tx_ring(struct ice_ring *tx_ring)
{
 struct device *dev = tx_ring->dev;

 if (!dev)
  return -ENOMEM;


 WARN_ON(tx_ring->tx_buf);
 tx_ring->tx_buf =
  devm_kzalloc(dev, sizeof(*tx_ring->tx_buf) * tx_ring->count,
        GFP_KERNEL);
 if (!tx_ring->tx_buf)
  return -ENOMEM;


 tx_ring->size = ALIGN(tx_ring->count * sizeof(struct ice_tx_desc),
         PAGE_SIZE);
 tx_ring->desc = dmam_alloc_coherent(dev, tx_ring->size, &tx_ring->dma,
         GFP_KERNEL);
 if (!tx_ring->desc) {
  dev_err(dev, "Unable to allocate memory for the Tx descriptor ring, size=%d\n",
   tx_ring->size);
  goto err;
 }

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;
 tx_ring->tx_stats.prev_pkt = -1;
 return 0;

err:
 devm_kfree(dev, tx_ring->tx_buf);
 tx_ring->tx_buf = ((void*)0);
 return -ENOMEM;
}
