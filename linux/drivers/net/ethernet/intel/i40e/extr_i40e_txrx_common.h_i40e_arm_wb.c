
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int state; } ;
struct i40e_ring {int flags; scalar_t__ count; int arm_wb; } ;


 scalar_t__ I40E_DESC_UNUSED (struct i40e_ring*) ;
 int I40E_TXR_FLAGS_WB_ON_ITR ;
 unsigned int WB_STRIDE ;
 int __I40E_VSI_DOWN ;
 unsigned int i40e_get_tx_pending (struct i40e_ring*,int) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static inline void i40e_arm_wb(struct i40e_ring *tx_ring,
          struct i40e_vsi *vsi,
          int budget)
{
 if (tx_ring->flags & I40E_TXR_FLAGS_WB_ON_ITR) {





  unsigned int j = i40e_get_tx_pending(tx_ring, 0);

  if (budget &&
      ((j / WB_STRIDE) == 0) && j > 0 &&
      !test_bit(__I40E_VSI_DOWN, vsi->state) &&
      (I40E_DESC_UNUSED(tx_ring) != tx_ring->count))
   tx_ring->arm_wb = 1;
 }
}
