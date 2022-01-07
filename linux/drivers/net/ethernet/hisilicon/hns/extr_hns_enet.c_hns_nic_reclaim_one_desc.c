
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {size_t next_to_clean; struct hnae_desc_cb* desc_cb; } ;
struct hnae_desc_cb {scalar_t__ type; scalar_t__ length; } ;


 scalar_t__ DESC_TYPE_SKB ;
 int hnae_free_buffer_detach (struct hnae_ring*,size_t) ;
 int next_to_clean ;
 int ring_ptr_move_fw (struct hnae_ring*,int ) ;

__attribute__((used)) static inline void hns_nic_reclaim_one_desc(struct hnae_ring *ring,
         int *bytes, int *pkts)
{
 struct hnae_desc_cb *desc_cb = &ring->desc_cb[ring->next_to_clean];

 (*pkts) += (desc_cb->type == DESC_TYPE_SKB);
 (*bytes) += desc_cb->length;

 hnae_free_buffer_detach(ring, ring->next_to_clean);

 ring_ptr_move_fw(ring, next_to_clean);
}
