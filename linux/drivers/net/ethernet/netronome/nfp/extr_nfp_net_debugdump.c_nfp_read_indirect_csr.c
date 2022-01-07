
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_dumpspec_cpp_isl_id {int island; int token; int target; } ;
struct nfp_cpp {int dummy; } ;


 int EIO ;
 int NFP_CPP_ISLAND_ID (int ,int ,int ,int ) ;
 int NFP_IND_ME_REFL_WR_SIG_INIT ;
 int nfp_cpp_read (struct nfp_cpp*,int,int,void*,int) ;
 int nfp_cpp_writel (struct nfp_cpp*,int,int,int) ;
 int nfp_get_ind_csr_ctx_ptr_offs (int) ;
 int nfp_get_numeric_cpp_id (struct nfp_dumpspec_cpp_isl_id*) ;

__attribute__((used)) static int
nfp_read_indirect_csr(struct nfp_cpp *cpp,
        struct nfp_dumpspec_cpp_isl_id cpp_params, u32 offset,
        u32 reg_sz, u32 context, void *dest)
{
 u32 csr_ctx_ptr_offs;
 u32 cpp_id;
 int result;

 csr_ctx_ptr_offs = nfp_get_ind_csr_ctx_ptr_offs(offset);
 cpp_id = NFP_CPP_ISLAND_ID(cpp_params.target,
       NFP_IND_ME_REFL_WR_SIG_INIT,
       cpp_params.token, cpp_params.island);
 result = nfp_cpp_writel(cpp, cpp_id, csr_ctx_ptr_offs, context);
 if (result)
  return result;

 cpp_id = nfp_get_numeric_cpp_id(&cpp_params);
 result = nfp_cpp_read(cpp, cpp_id, csr_ctx_ptr_offs, dest, reg_sz);
 if (result != reg_sz)
  return result < 0 ? result : -EIO;

 result = nfp_cpp_read(cpp, cpp_id, offset, dest, reg_sz);
 if (result != reg_sz)
  return result < 0 ? result : -EIO;

 return 0;
}
