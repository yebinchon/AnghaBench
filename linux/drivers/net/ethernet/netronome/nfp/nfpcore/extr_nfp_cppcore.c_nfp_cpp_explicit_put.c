
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_explicit {int dummy; } ;


 int NFP_EXPL_OP (int ,struct nfp_cpp_explicit*,void const*,size_t) ;
 int explicit_put ;

int nfp_cpp_explicit_put(struct nfp_cpp_explicit *expl,
    const void *buff, size_t len)
{
 return NFP_EXPL_OP(explicit_put, expl, buff, len);
}
