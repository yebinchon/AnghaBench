
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {scalar_t__ desc_num; scalar_t__ buf_size; int * desc_cb; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HNAE3_IS_TX_RING (struct hns3_enet_ring*) ;
 int * devm_kcalloc (int ,scalar_t__,int,int ) ;
 int devm_kfree (int ,int *) ;
 int hns3_alloc_desc (struct hns3_enet_ring*) ;
 int hns3_alloc_ring_buffers (struct hns3_enet_ring*) ;
 int hns3_free_desc (struct hns3_enet_ring*) ;
 int ring_to_dev (struct hns3_enet_ring*) ;

__attribute__((used)) static int hns3_alloc_ring_memory(struct hns3_enet_ring *ring)
{
 int ret;

 if (ring->desc_num <= 0 || ring->buf_size <= 0)
  return -EINVAL;

 ring->desc_cb = devm_kcalloc(ring_to_dev(ring), ring->desc_num,
         sizeof(ring->desc_cb[0]), GFP_KERNEL);
 if (!ring->desc_cb) {
  ret = -ENOMEM;
  goto out;
 }

 ret = hns3_alloc_desc(ring);
 if (ret)
  goto out_with_desc_cb;

 if (!HNAE3_IS_TX_RING(ring)) {
  ret = hns3_alloc_ring_buffers(ring);
  if (ret)
   goto out_with_desc;
 }

 return 0;

out_with_desc:
 hns3_free_desc(ring);
out_with_desc_cb:
 devm_kfree(ring_to_dev(ring), ring->desc_cb);
 ring->desc_cb = ((void*)0);
out:
 return ret;
}
