
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_insn_meta {int dummy; } ;


 scalar_t__ is_mbpf_jmp32 (struct nfp_insn_meta const*) ;
 scalar_t__ is_mbpf_jmp64 (struct nfp_insn_meta const*) ;

__attribute__((used)) static inline bool is_mbpf_jmp(const struct nfp_insn_meta *meta)
{
 return is_mbpf_jmp32(meta) || is_mbpf_jmp64(meta);
}
