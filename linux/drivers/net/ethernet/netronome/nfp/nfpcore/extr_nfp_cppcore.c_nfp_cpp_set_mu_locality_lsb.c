
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_cpp {int* imb_cat_table; int mu_locality_lsb; } ;


 size_t NFP_CPP_TARGET_MU ;
 int NFP_IMB_TGTADDRESSMODECFG_ADDRMODE ;
 unsigned int NFP_IMB_TGTADDRESSMODECFG_MODE_of (int) ;
 int nfp_cppat_mu_locality_lsb (unsigned int,unsigned int) ;

__attribute__((used)) static int nfp_cpp_set_mu_locality_lsb(struct nfp_cpp *cpp)
{
 unsigned int mode, addr40;
 u32 imbcppat;
 int res;

 imbcppat = cpp->imb_cat_table[NFP_CPP_TARGET_MU];
 mode = NFP_IMB_TGTADDRESSMODECFG_MODE_of(imbcppat);
 addr40 = !!(imbcppat & NFP_IMB_TGTADDRESSMODECFG_ADDRMODE);

 res = nfp_cppat_mu_locality_lsb(mode, addr40);
 if (res < 0)
  return res;
 cpp->mu_locality_lsb = res;

 return 0;
}
