
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int imm; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;
 int EOPNOTSUPP ;
 int WARN_ONCE (int,char*) ;
 int adjust_head (struct nfp_prog*,struct nfp_insn_meta*) ;
 int adjust_tail (struct nfp_prog*,struct nfp_insn_meta*) ;
 int map_call_stack_common (struct nfp_prog*,struct nfp_insn_meta*) ;
 int nfp_get_prandom_u32 (struct nfp_prog*,struct nfp_insn_meta*) ;
 int nfp_perf_event_output (struct nfp_prog*,struct nfp_insn_meta*) ;

__attribute__((used)) static int helper_call(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 switch (meta->insn.imm) {
 case 129:
  return adjust_head(nfp_prog, meta);
 case 128:
  return adjust_tail(nfp_prog, meta);
 case 132:
 case 131:
 case 133:
  return map_call_stack_common(nfp_prog, meta);
 case 134:
  return nfp_get_prandom_u32(nfp_prog, meta);
 case 130:
  return nfp_perf_event_output(nfp_prog, meta);
 default:
  WARN_ONCE(1, "verifier allowed unsupported function\n");
  return -EOPNOTSUPP;
 }
}
