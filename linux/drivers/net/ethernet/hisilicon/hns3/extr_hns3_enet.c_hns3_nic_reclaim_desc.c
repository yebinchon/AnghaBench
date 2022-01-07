
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {int next_to_clean; int desc_num; struct hns3_desc_cb* desc_cb; } ;
struct hns3_desc_cb {scalar_t__ type; scalar_t__ length; } ;


 scalar_t__ DESC_TYPE_SKB ;
 int hns3_free_buffer_detach (struct hns3_enet_ring*,int) ;
 int prefetch (struct hns3_desc_cb*) ;
 int smp_store_release (int*,int) ;

__attribute__((used)) static void hns3_nic_reclaim_desc(struct hns3_enet_ring *ring, int head,
      int *bytes, int *pkts)
{
 int ntc = ring->next_to_clean;
 struct hns3_desc_cb *desc_cb;

 while (head != ntc) {
  desc_cb = &ring->desc_cb[ntc];
  (*pkts) += (desc_cb->type == DESC_TYPE_SKB);
  (*bytes) += desc_cb->length;

  hns3_free_buffer_detach(ring, ntc);

  if (++ntc == ring->desc_num)
   ntc = 0;


  prefetch(&ring->desc_cb[ntc]);
 }




 smp_store_release(&ring->next_to_clean, ntc);
}
