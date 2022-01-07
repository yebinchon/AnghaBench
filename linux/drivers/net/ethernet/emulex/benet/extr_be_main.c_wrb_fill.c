
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct be_eth_wrb {scalar_t__ rsvd0; void* frag_len; void* frag_pa_lo; void* frag_pa_hi; } ;


 int ETH_WRB_FRAG_LEN_MASK ;
 void* cpu_to_le32 (int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline void wrb_fill(struct be_eth_wrb *wrb, u64 addr, int len)
{
 wrb->frag_pa_hi = cpu_to_le32(upper_32_bits(addr));
 wrb->frag_pa_lo = cpu_to_le32(lower_32_bits(addr));
 wrb->frag_len = cpu_to_le32(len & ETH_WRB_FRAG_LEN_MASK);
 wrb->rsvd0 = 0;
}
