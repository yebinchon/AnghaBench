
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ath10k_ce {size_t* vaddr_rri; } ;
struct ath10k {int dummy; } ;


 size_t CE_DDR_RRI_MASK ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;

__attribute__((used)) static inline u32 ath10k_ce_src_ring_read_index_from_ddr(struct ath10k *ar,
        u32 ce_id)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);

 return ce->vaddr_rri[ce_id] & CE_DDR_RRI_MASK;
}
