
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ce_desc_64 {int dummy; } ;
struct ath10k_ce_pipe {TYPE_2__* dest_ring; TYPE_2__* src_ring; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct TYPE_3__ {scalar_t__ shadow_reg_support; } ;
struct ath10k {int dev; TYPE_1__ hw_params; } ;
struct TYPE_4__ {int nentries; int base_addr_ce_space; int base_addr_owner_space; struct TYPE_4__* shadow_base_unaligned; } ;


 scalar_t__ CE_DESC_RING_ALIGN ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int dma_free_coherent (int ,scalar_t__,int ,int ) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void _ath10k_ce_free_pipe_64(struct ath10k *ar, int ce_id)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_ce_pipe *ce_state = &ce->ce_states[ce_id];

 if (ce_state->src_ring) {
  if (ar->hw_params.shadow_reg_support)
   kfree(ce_state->src_ring->shadow_base_unaligned);
  dma_free_coherent(ar->dev,
      (ce_state->src_ring->nentries *
       sizeof(struct ce_desc_64) +
       CE_DESC_RING_ALIGN),
      ce_state->src_ring->base_addr_owner_space,
      ce_state->src_ring->base_addr_ce_space);
  kfree(ce_state->src_ring);
 }

 if (ce_state->dest_ring) {
  dma_free_coherent(ar->dev,
      (ce_state->dest_ring->nentries *
       sizeof(struct ce_desc_64) +
       CE_DESC_RING_ALIGN),
      ce_state->dest_ring->base_addr_owner_space,
      ce_state->dest_ring->base_addr_ce_space);
  kfree(ce_state->dest_ring);
 }

 ce_state->src_ring = ((void*)0);
 ce_state->dest_ring = ((void*)0);
}
