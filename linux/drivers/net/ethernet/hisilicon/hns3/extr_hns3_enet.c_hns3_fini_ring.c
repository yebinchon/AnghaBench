
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {int * skb; scalar_t__ pending_buf; scalar_t__ next_to_use; scalar_t__ next_to_clean; int * desc_cb; } ;


 int dev_kfree_skb_any (int *) ;
 int devm_kfree (int ,int *) ;
 int hns3_free_desc (struct hns3_enet_ring*) ;
 int ring_to_dev (struct hns3_enet_ring*) ;

void hns3_fini_ring(struct hns3_enet_ring *ring)
{
 hns3_free_desc(ring);
 devm_kfree(ring_to_dev(ring), ring->desc_cb);
 ring->desc_cb = ((void*)0);
 ring->next_to_clean = 0;
 ring->next_to_use = 0;
 ring->pending_buf = 0;
 if (ring->skb) {
  dev_kfree_skb_any(ring->skb);
  ring->skb = ((void*)0);
 }
}
