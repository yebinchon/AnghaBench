
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp_prog {int __prog_alloc_len; int prog_len; int * prog; int error; } ;


 int ENOSPC ;
 int pr_warn (char*,int) ;

__attribute__((used)) static void nfp_prog_push(struct nfp_prog *nfp_prog, u64 insn)
{
 if (nfp_prog->__prog_alloc_len / sizeof(u64) == nfp_prog->prog_len) {
  pr_warn("instruction limit reached (%u NFP instructions)\n",
   nfp_prog->prog_len);
  nfp_prog->error = -ENOSPC;
  return;
 }

 nfp_prog->prog[nfp_prog->prog_len] = insn;
 nfp_prog->prog_len++;
}
