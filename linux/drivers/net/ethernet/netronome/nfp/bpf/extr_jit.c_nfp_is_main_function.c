
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_insn_meta {scalar_t__ subprog_idx; } ;



__attribute__((used)) static bool nfp_is_main_function(struct nfp_insn_meta *meta)
{
 return meta->subprog_idx == 0;
}
