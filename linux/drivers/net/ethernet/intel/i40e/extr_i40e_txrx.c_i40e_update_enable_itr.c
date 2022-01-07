
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vsi {int state; TYPE_2__* back; } ;
struct TYPE_3__ {scalar_t__ target_itr; scalar_t__ current_itr; } ;
struct i40e_q_vector {int reg_idx; void* itr_countdown; TYPE_1__ rx; TYPE_1__ tx; } ;
struct i40e_hw {int dummy; } ;
struct TYPE_4__ {int flags; struct i40e_hw hw; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_ITR_NONE ;
 int I40E_RX_ITR ;
 int I40E_TX_ITR ;
 int INTREG (int ) ;
 void* ITR_COUNTDOWN_START ;
 int __I40E_VSI_DOWN ;
 int i40e_buildreg_itr (int ,scalar_t__) ;
 int i40e_irq_dynamic_enable_icr0 (TYPE_2__*) ;
 int i40e_update_itr (struct i40e_q_vector*,TYPE_1__*) ;
 int test_bit (int ,int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static inline void i40e_update_enable_itr(struct i40e_vsi *vsi,
       struct i40e_q_vector *q_vector)
{
 struct i40e_hw *hw = &vsi->back->hw;
 u32 intval;


 if (!(vsi->back->flags & I40E_FLAG_MSIX_ENABLED)) {
  i40e_irq_dynamic_enable_icr0(vsi->back);
  return;
 }


 i40e_update_itr(q_vector, &q_vector->tx);
 i40e_update_itr(q_vector, &q_vector->rx);
 if (q_vector->rx.target_itr < q_vector->rx.current_itr) {

  intval = i40e_buildreg_itr(I40E_RX_ITR,
        q_vector->rx.target_itr);
  q_vector->rx.current_itr = q_vector->rx.target_itr;
  q_vector->itr_countdown = ITR_COUNTDOWN_START;
 } else if ((q_vector->tx.target_itr < q_vector->tx.current_itr) ||
     ((q_vector->rx.target_itr - q_vector->rx.current_itr) <
      (q_vector->tx.target_itr - q_vector->tx.current_itr))) {



  intval = i40e_buildreg_itr(I40E_TX_ITR,
        q_vector->tx.target_itr);
  q_vector->tx.current_itr = q_vector->tx.target_itr;
  q_vector->itr_countdown = ITR_COUNTDOWN_START;
 } else if (q_vector->rx.current_itr != q_vector->rx.target_itr) {

  intval = i40e_buildreg_itr(I40E_RX_ITR,
        q_vector->rx.target_itr);
  q_vector->rx.current_itr = q_vector->rx.target_itr;
  q_vector->itr_countdown = ITR_COUNTDOWN_START;
 } else {

  intval = i40e_buildreg_itr(I40E_ITR_NONE, 0);
  if (q_vector->itr_countdown)
   q_vector->itr_countdown--;
 }

 if (!test_bit(__I40E_VSI_DOWN, vsi->state))
  wr32(hw, INTREG(q_vector->reg_idx), intval);
}
