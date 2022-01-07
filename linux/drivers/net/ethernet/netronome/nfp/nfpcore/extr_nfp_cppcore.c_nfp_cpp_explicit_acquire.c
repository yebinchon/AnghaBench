
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_cpp_explicit {struct nfp_cpp* cpp; } ;
struct nfp_cpp {TYPE_1__* op; } ;
struct TYPE_2__ {scalar_t__ explicit_priv_size; } ;


 int GFP_KERNEL ;
 int NFP_EXPL_OP (int ,struct nfp_cpp_explicit*) ;
 int explicit_acquire ;
 int kfree (struct nfp_cpp_explicit*) ;
 struct nfp_cpp_explicit* kzalloc (scalar_t__,int ) ;

struct nfp_cpp_explicit *nfp_cpp_explicit_acquire(struct nfp_cpp *cpp)
{
 struct nfp_cpp_explicit *expl;
 int err;

 expl = kzalloc(sizeof(*expl) + cpp->op->explicit_priv_size, GFP_KERNEL);
 if (!expl)
  return ((void*)0);

 expl->cpp = cpp;
 err = NFP_EXPL_OP(explicit_acquire, expl);
 if (err < 0) {
  kfree(expl);
  return ((void*)0);
 }

 return expl;
}
