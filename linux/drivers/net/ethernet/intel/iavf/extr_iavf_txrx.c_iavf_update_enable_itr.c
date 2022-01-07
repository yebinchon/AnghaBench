
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iavf_vsi {int state; TYPE_1__* back; } ;
struct TYPE_4__ {scalar_t__ target_itr; scalar_t__ current_itr; } ;
struct iavf_q_vector {int reg_idx; void* itr_countdown; TYPE_2__ rx; TYPE_2__ tx; } ;
struct iavf_hw {int dummy; } ;
struct TYPE_3__ {struct iavf_hw hw; } ;


 int IAVF_ITR_NONE ;
 int IAVF_RX_ITR ;
 int IAVF_TX_ITR ;
 int INTREG (int ) ;
 void* ITR_COUNTDOWN_START ;
 int __IAVF_VSI_DOWN ;
 int iavf_buildreg_itr (int ,scalar_t__) ;
 int iavf_update_itr (struct iavf_q_vector*,TYPE_2__*) ;
 int test_bit (int ,int ) ;
 int wr32 (struct iavf_hw*,int ,int ) ;

__attribute__((used)) static inline void iavf_update_enable_itr(struct iavf_vsi *vsi,
       struct iavf_q_vector *q_vector)
{
 struct iavf_hw *hw = &vsi->back->hw;
 u32 intval;


 iavf_update_itr(q_vector, &q_vector->tx);
 iavf_update_itr(q_vector, &q_vector->rx);
 if (q_vector->rx.target_itr < q_vector->rx.current_itr) {

  intval = iavf_buildreg_itr(IAVF_RX_ITR,
        q_vector->rx.target_itr);
  q_vector->rx.current_itr = q_vector->rx.target_itr;
  q_vector->itr_countdown = ITR_COUNTDOWN_START;
 } else if ((q_vector->tx.target_itr < q_vector->tx.current_itr) ||
     ((q_vector->rx.target_itr - q_vector->rx.current_itr) <
      (q_vector->tx.target_itr - q_vector->tx.current_itr))) {



  intval = iavf_buildreg_itr(IAVF_TX_ITR,
        q_vector->tx.target_itr);
  q_vector->tx.current_itr = q_vector->tx.target_itr;
  q_vector->itr_countdown = ITR_COUNTDOWN_START;
 } else if (q_vector->rx.current_itr != q_vector->rx.target_itr) {

  intval = iavf_buildreg_itr(IAVF_RX_ITR,
        q_vector->rx.target_itr);
  q_vector->rx.current_itr = q_vector->rx.target_itr;
  q_vector->itr_countdown = ITR_COUNTDOWN_START;
 } else {

  intval = iavf_buildreg_itr(IAVF_ITR_NONE, 0);
  if (q_vector->itr_countdown)
   q_vector->itr_countdown--;
 }

 if (!test_bit(__IAVF_VSI_DOWN, vsi->state))
  wr32(hw, INTREG(q_vector->reg_idx), intval);
}
