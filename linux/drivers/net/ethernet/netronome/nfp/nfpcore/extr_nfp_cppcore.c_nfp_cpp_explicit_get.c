
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_explicit {int dummy; } ;


 int NFP_EXPL_OP (int ,struct nfp_cpp_explicit*,void*,size_t) ;
 int explicit_get ;

int nfp_cpp_explicit_get(struct nfp_cpp_explicit *expl, void *buff, size_t len)
{
 return NFP_EXPL_OP(explicit_get, expl, buff, len);
}
