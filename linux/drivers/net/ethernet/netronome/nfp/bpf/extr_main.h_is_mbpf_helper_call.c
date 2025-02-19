
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {int code; scalar_t__ src_reg; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int BPF_CALL ;
 int BPF_JMP ;
 scalar_t__ BPF_PSEUDO_CALL ;

__attribute__((used)) static inline bool is_mbpf_helper_call(const struct nfp_insn_meta *meta)
{
 struct bpf_insn insn = meta->insn;

 return insn.code == (BPF_JMP | BPF_CALL) &&
  insn.src_reg != BPF_PSEUDO_CALL;
}
