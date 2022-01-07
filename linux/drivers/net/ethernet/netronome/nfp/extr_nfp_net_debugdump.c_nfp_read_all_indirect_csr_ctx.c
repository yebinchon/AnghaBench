
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cpp_id; } ;
struct nfp_dumpspec_csr {TYPE_1__ cpp; } ;
struct nfp_cpp {int dummy; } ;


 int NFP_IND_NUM_CONTEXTS ;
 int nfp_read_indirect_csr (struct nfp_cpp*,int ,int,int,int,void*) ;

__attribute__((used)) static int
nfp_read_all_indirect_csr_ctx(struct nfp_cpp *cpp,
         struct nfp_dumpspec_csr *spec_csr, u32 address,
         u32 reg_sz, void *dest)
{
 u32 ctx;
 int err;

 for (ctx = 0; ctx < NFP_IND_NUM_CONTEXTS; ctx++) {
  err = nfp_read_indirect_csr(cpp, spec_csr->cpp.cpp_id, address,
         reg_sz, ctx, dest + ctx * reg_sz);
  if (err)
   return err;
 }

 return 0;
}
