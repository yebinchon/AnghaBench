
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct ath10k_ce_pipe {TYPE_1__* ops; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct ath10k {TYPE_2__* hw_ce_regs; } ;
struct TYPE_4__ {size_t sr_base_addr_lo; } ;
struct TYPE_3__ {int (* ce_set_src_ring_base_addr_hi ) (struct ath10k*,size_t,int ) ;} ;


 size_t ath10k_ce_base_address (struct ath10k*,size_t) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int ath10k_ce_write32 (struct ath10k*,size_t,size_t) ;
 size_t lower_32_bits (int ) ;
 int stub1 (struct ath10k*,size_t,int ) ;

__attribute__((used)) static inline void ath10k_ce_src_ring_base_addr_set(struct ath10k *ar,
          u32 ce_id,
          u64 addr)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_ce_pipe *ce_state = &ce->ce_states[ce_id];
 u32 ce_ctrl_addr = ath10k_ce_base_address(ar, ce_id);
 u32 addr_lo = lower_32_bits(addr);

 ath10k_ce_write32(ar, ce_ctrl_addr +
     ar->hw_ce_regs->sr_base_addr_lo, addr_lo);

 if (ce_state->ops->ce_set_src_ring_base_addr_hi) {
  ce_state->ops->ce_set_src_ring_base_addr_hi(ar, ce_ctrl_addr,
           addr);
 }
}
