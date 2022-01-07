
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NFP_CSR_CTX_PTR ;
 int NFP_IND_ME_CTX_PTR_BASE_MASK ;

__attribute__((used)) static inline u32 nfp_get_ind_csr_ctx_ptr_offs(u32 read_offset)
{
 return (read_offset & ~NFP_IND_ME_CTX_PTR_BASE_MASK) | NFP_CSR_CTX_PTR;
}
