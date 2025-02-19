
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int bpf_to_bpf_call (struct nfp_prog*,struct nfp_insn_meta*) ;
 int helper_call (struct nfp_prog*,struct nfp_insn_meta*) ;
 scalar_t__ is_mbpf_pseudo_call (struct nfp_insn_meta*) ;

__attribute__((used)) static int call(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 if (is_mbpf_pseudo_call(meta))
  return bpf_to_bpf_call(nfp_prog, meta);
 else
  return helper_call(nfp_prog, meta);
}
