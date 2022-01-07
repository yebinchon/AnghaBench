
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_ce_pipe {int dummy; } ;
struct ath10k {int dummy; } ;


 int ath10k_ce_write32 (struct ath10k*,int ,unsigned int) ;
 int shadow_sr_wr_ind_addr (struct ath10k*,struct ath10k_ce_pipe*) ;

__attribute__((used)) static inline void
ath10k_ce_shadow_src_ring_write_index_set(struct ath10k *ar,
       struct ath10k_ce_pipe *ce_state,
       unsigned int value)
{
 ath10k_ce_write32(ar, shadow_sr_wr_ind_addr(ar, ce_state), value);
}
