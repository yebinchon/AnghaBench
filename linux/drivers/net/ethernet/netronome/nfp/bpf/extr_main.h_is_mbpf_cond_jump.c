
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfp_insn_meta {int dummy; } ;


 scalar_t__ BPF_CALL ;
 scalar_t__ BPF_EXIT ;
 scalar_t__ BPF_JA ;
 scalar_t__ is_mbpf_jmp32 (struct nfp_insn_meta const*) ;
 int is_mbpf_jmp64 (struct nfp_insn_meta const*) ;
 scalar_t__ mbpf_op (struct nfp_insn_meta const*) ;

__attribute__((used)) static inline bool is_mbpf_cond_jump(const struct nfp_insn_meta *meta)
{
 u8 op;

 if (is_mbpf_jmp32(meta))
  return 1;

 if (!is_mbpf_jmp64(meta))
  return 0;

 op = mbpf_op(meta);
 return op != BPF_JA && op != BPF_EXIT && op != BPF_CALL;
}
