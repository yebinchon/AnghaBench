
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ice_32byte_rx_desc {int dummy; } ice_32byte_rx_desc ;
struct ice_ring {int count; int * rx_buf; scalar_t__ next_to_clean; scalar_t__ next_to_use; int size; int desc; int dma; struct device* dev; } ;
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

int ice_setup_rx_ring(struct ice_ring *rx_ring)
{
 struct device *dev = rx_ring->dev;

 if (!dev)
  return -ENOMEM;


 WARN_ON(rx_ring->rx_buf);
 rx_ring->rx_buf =
  devm_kzalloc(dev, sizeof(*rx_ring->rx_buf) * rx_ring->count,
        GFP_KERNEL);
 if (!rx_ring->rx_buf)
  return -ENOMEM;


 rx_ring->size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
         PAGE_SIZE);
 rx_ring->desc = dmam_alloc_coherent(dev, rx_ring->size, &rx_ring->dma,
         GFP_KERNEL);
 if (!rx_ring->desc) {
  dev_err(dev, "Unable to allocate memory for the Rx descriptor ring, size=%d\n",
   rx_ring->size);
  goto err;
 }

 rx_ring->next_to_use = 0;
 rx_ring->next_to_clean = 0;
 return 0;

err:
 devm_kfree(dev, rx_ring->rx_buf);
 rx_ring->rx_buf = ((void*)0);
 return -ENOMEM;
}
