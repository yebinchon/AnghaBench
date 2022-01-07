
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_explicit {int dummy; } ;


 int NFP_EXPL_OP_NR (int ,struct nfp_cpp_explicit*) ;
 int explicit_release ;
 int kfree (struct nfp_cpp_explicit*) ;

void nfp_cpp_explicit_release(struct nfp_cpp_explicit *expl)
{
 NFP_EXPL_OP_NR(explicit_release, expl);
 kfree(expl);
}
