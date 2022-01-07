
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_insn_meta {int dummy; } ;


 scalar_t__ BPF_MUL ;
 scalar_t__ is_mbpf_alu (struct nfp_insn_meta const*) ;
 scalar_t__ mbpf_op (struct nfp_insn_meta const*) ;

__attribute__((used)) static inline bool is_mbpf_mul(const struct nfp_insn_meta *meta)
{
 return is_mbpf_alu(meta) && mbpf_op(meta) == BPF_MUL;
}
