
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct fm10k_ring {scalar_t__ next_to_clean; scalar_t__ next_to_use; scalar_t__ count; int reg_idx; TYPE_1__* q_vector; } ;
struct fm10k_hw {int dummy; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;
struct TYPE_2__ {struct fm10k_intfc* interface; } ;


 int FM10K_TDH (int ) ;
 int FM10K_TDT (int ) ;
 scalar_t__ fm10k_read_reg (struct fm10k_hw*,int ) ;
 scalar_t__ likely (int) ;

u64 fm10k_get_tx_pending(struct fm10k_ring *ring, bool in_sw)
{
 struct fm10k_intfc *interface = ring->q_vector->interface;
 struct fm10k_hw *hw = &interface->hw;
 u32 head, tail;

 if (likely(in_sw)) {
  head = ring->next_to_clean;
  tail = ring->next_to_use;
 } else {
  head = fm10k_read_reg(hw, FM10K_TDH(ring->reg_idx));
  tail = fm10k_read_reg(hw, FM10K_TDT(ring->reg_idx));
 }

 return ((head <= tail) ? tail : tail + ring->count) - head;
}
