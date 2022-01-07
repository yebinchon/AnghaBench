
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp_cpp_explicit {int cmd; } ;


 int NFP_EXPL_OP (int ,struct nfp_cpp_explicit*,int *,int ) ;
 int explicit_do ;

int nfp_cpp_explicit_do(struct nfp_cpp_explicit *expl, u64 address)
{
 return NFP_EXPL_OP(explicit_do, expl, &expl->cmd, address);
}
