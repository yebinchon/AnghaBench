
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct bfi_alen {int al_addr; int al_len; } ;


 int bfa_dma_be_addr_set (int ,int ) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void
__bfa_alen_set(struct bfi_alen *alen, u32 len, u64 pa)
{
 alen->al_len = cpu_to_be32(len);
 bfa_dma_be_addr_set(alen->al_addr, pa);
}
