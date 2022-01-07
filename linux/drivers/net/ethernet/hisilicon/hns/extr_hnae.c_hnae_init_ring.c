
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae_ring {scalar_t__ desc_num; scalar_t__ buf_size; int flags; scalar_t__ next_to_use; scalar_t__ next_to_clean; int * desc_cb; int desc_dma_addr; int desc; int coal_param; struct hnae_queue* q; } ;
struct hnae_queue {TYPE_1__* handle; } ;
struct TYPE_2__ {int coal_param; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int assert (int) ;
 int hnae_alloc_buffers (struct hnae_ring*) ;
 int hnae_alloc_desc (struct hnae_ring*) ;
 int hnae_free_desc (struct hnae_ring*) ;
 scalar_t__ is_rx_ring (struct hnae_ring*) ;
 int * kcalloc (scalar_t__,int,int ) ;
 int kfree (int *) ;

__attribute__((used)) static int
hnae_init_ring(struct hnae_queue *q, struct hnae_ring *ring, int flags)
{
 int ret;

 if (ring->desc_num <= 0 || ring->buf_size <= 0)
  return -EINVAL;

 ring->q = q;
 ring->flags = flags;
 ring->coal_param = q->handle->coal_param;
 assert(!ring->desc && !ring->desc_cb && !ring->desc_dma_addr);


 assert(ring->next_to_use == 0);
 assert(ring->next_to_clean == 0);

 ring->desc_cb = kcalloc(ring->desc_num, sizeof(ring->desc_cb[0]),
   GFP_KERNEL);
 if (!ring->desc_cb) {
  ret = -ENOMEM;
  goto out;
 }

 ret = hnae_alloc_desc(ring);
 if (ret)
  goto out_with_desc_cb;

 if (is_rx_ring(ring)) {
  ret = hnae_alloc_buffers(ring);
  if (ret)
   goto out_with_desc;
 }

 return 0;

out_with_desc:
 hnae_free_desc(ring);
out_with_desc_cb:
 kfree(ring->desc_cb);
 ring->desc_cb = ((void*)0);
out:
 return ret;
}
