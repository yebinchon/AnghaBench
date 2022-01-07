
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int src_reg; int dst_reg; scalar_t__ imm; } ;
struct nfp_insn_meta {TYPE_1__ insn; void* umax_src; void* umin_src; void* umax_dst; void* umin_dst; } ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int umax_value; int umin_value; } ;


 scalar_t__ BPF_ALU64 ;
 scalar_t__ BPF_K ;
 scalar_t__ BPF_X ;
 int EINVAL ;
 void* U32_MAX ;
 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;
 scalar_t__ is_mbpf_div (struct nfp_insn_meta*) ;
 scalar_t__ is_mbpf_mul (struct nfp_insn_meta*) ;
 void* max (void*,int ) ;
 scalar_t__ mbpf_class (struct nfp_insn_meta*) ;
 scalar_t__ mbpf_src (struct nfp_insn_meta*) ;
 void* min (void*,int ) ;
 int pr_vlog (struct bpf_verifier_env*,char*) ;

__attribute__((used)) static int
nfp_bpf_check_alu(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
    struct bpf_verifier_env *env)
{
 const struct bpf_reg_state *sreg =
  cur_regs(env) + meta->insn.src_reg;
 const struct bpf_reg_state *dreg =
  cur_regs(env) + meta->insn.dst_reg;

 meta->umin_src = min(meta->umin_src, sreg->umin_value);
 meta->umax_src = max(meta->umax_src, sreg->umax_value);
 meta->umin_dst = min(meta->umin_dst, dreg->umin_value);
 meta->umax_dst = max(meta->umax_dst, dreg->umax_value);
 if (is_mbpf_mul(meta)) {
  if (meta->umax_dst > U32_MAX) {
   pr_vlog(env, "multiplier is not within u32 value range\n");
   return -EINVAL;
  }
  if (mbpf_src(meta) == BPF_X && meta->umax_src > U32_MAX) {
   pr_vlog(env, "multiplicand is not within u32 value range\n");
   return -EINVAL;
  }
  if (mbpf_class(meta) == BPF_ALU64 &&
      mbpf_src(meta) == BPF_K && meta->insn.imm < 0) {
   pr_vlog(env, "sign extended multiplicand won't be within u32 value range\n");
   return -EINVAL;
  }
 }
 if (is_mbpf_div(meta)) {
  if (meta->umax_dst > U32_MAX) {
   pr_vlog(env, "dividend is not within u32 value range\n");
   return -EINVAL;
  }
  if (mbpf_src(meta) == BPF_X) {
   if (meta->umin_src != meta->umax_src) {
    pr_vlog(env, "divisor is not constant\n");
    return -EINVAL;
   }
   if (meta->umax_src > U32_MAX) {
    pr_vlog(env, "divisor is not within u32 value range\n");
    return -EINVAL;
   }
  }
  if (mbpf_src(meta) == BPF_K && meta->insn.imm < 0) {
   pr_vlog(env, "divide by negative constant is not supported\n");
   return -EINVAL;
  }
 }

 return 0;
}
