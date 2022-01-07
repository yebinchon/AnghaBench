
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;
struct jmp_code_map {int br_mask; } ;


 unsigned int ARRAY_SIZE (struct jmp_code_map const*) ;
 int BPF_OP (int ) ;
 scalar_t__ WARN_ONCE (int,char*) ;
 struct jmp_code_map const* jmp_code_map ;

__attribute__((used)) static const struct jmp_code_map *nfp_jmp_code_get(struct nfp_insn_meta *meta)
{
 unsigned int op;

 op = BPF_OP(meta->insn.code) >> 4;

 if (WARN_ONCE(op >= ARRAY_SIZE(jmp_code_map) ||
        !jmp_code_map[op].br_mask,
        "no code found for jump instruction"))
  return ((void*)0);

 return &jmp_code_map[op];
}
