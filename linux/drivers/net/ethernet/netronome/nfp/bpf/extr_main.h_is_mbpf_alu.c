
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_insn_meta {int dummy; } ;


 scalar_t__ BPF_ALU ;
 scalar_t__ BPF_ALU64 ;
 scalar_t__ mbpf_class (struct nfp_insn_meta const*) ;

__attribute__((used)) static inline bool is_mbpf_alu(const struct nfp_insn_meta *meta)
{
 return mbpf_class(meta) == BPF_ALU64 || mbpf_class(meta) == BPF_ALU;
}
