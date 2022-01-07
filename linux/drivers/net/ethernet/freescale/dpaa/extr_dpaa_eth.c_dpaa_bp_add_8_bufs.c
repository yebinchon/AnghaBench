
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dpaa_bp {struct device* dev; int size; int raw_size; } ;
struct device {int dummy; } ;
struct bm_buffer {scalar_t__ data; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 void* PTR_ALIGN (void*,int ) ;
 int SMP_CACHE_BYTES ;
 int WARN_ONCE (int,char*) ;
 int bm_buffer_set64 (struct bm_buffer*,int ) ;
 int dev_err (struct device*,char*,...) ;
 int dma_map_single (struct device*,void*,int ,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int dpaa_bman_release (struct dpaa_bp const*,struct bm_buffer*,int) ;
 scalar_t__ likely (int) ;
 void* netdev_alloc_frag (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dpaa_bp_add_8_bufs(const struct dpaa_bp *dpaa_bp)
{
 struct device *dev = dpaa_bp->dev;
 struct bm_buffer bmb[8];
 dma_addr_t addr;
 void *new_buf;
 u8 i;

 for (i = 0; i < 8; i++) {
  new_buf = netdev_alloc_frag(dpaa_bp->raw_size);
  if (unlikely(!new_buf)) {
   dev_err(dev, "netdev_alloc_frag() failed, size %zu\n",
    dpaa_bp->raw_size);
   goto release_previous_buffs;
  }
  new_buf = PTR_ALIGN(new_buf, SMP_CACHE_BYTES);

  addr = dma_map_single(dev, new_buf,
          dpaa_bp->size, DMA_FROM_DEVICE);
  if (unlikely(dma_mapping_error(dev, addr))) {
   dev_err(dpaa_bp->dev, "DMA map failed");
   goto release_previous_buffs;
  }

  bmb[i].data = 0;
  bm_buffer_set64(&bmb[i], addr);
 }

release_bufs:
 return dpaa_bman_release(dpaa_bp, bmb, i);

release_previous_buffs:
 WARN_ONCE(1, "dpaa_eth: failed to add buffers on Rx\n");

 bm_buffer_set64(&bmb[i], 0);



 if (likely(i))
  goto release_bufs;

 return 0;
}
