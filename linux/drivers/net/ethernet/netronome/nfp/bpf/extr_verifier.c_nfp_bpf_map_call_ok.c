
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_insn_meta {int dummy; } ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int dummy; } ;


 int pr_vlog (struct bpf_verifier_env*,char*,char const*) ;

__attribute__((used)) static bool
nfp_bpf_map_call_ok(const char *fname, struct bpf_verifier_env *env,
      struct nfp_insn_meta *meta,
      u32 helper_tgt, const struct bpf_reg_state *reg1)
{
 if (!helper_tgt) {
  pr_vlog(env, "%s: not supported by FW\n", fname);
  return 0;
 }

 return 1;
}
