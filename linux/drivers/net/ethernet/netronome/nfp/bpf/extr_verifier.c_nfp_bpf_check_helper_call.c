
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
typedef int tn_buf ;
struct nfp_prog {struct nfp_app_bpf* bpf; } ;
struct TYPE_15__ {int mask; int value; } ;
struct bpf_reg_state {int type; TYPE_7__ var_off; } ;
struct TYPE_16__ {struct bpf_reg_state reg; } ;
struct TYPE_9__ {int imm; } ;
struct nfp_insn_meta {int func_id; TYPE_8__ arg2; struct bpf_reg_state arg1; TYPE_1__ insn; } ;
struct TYPE_11__ {int perf_event_output; int map_delete; int map_update; int map_lookup; } ;
struct TYPE_10__ {int flags; int off_max; } ;
struct nfp_app_bpf {TYPE_6__* app; TYPE_3__ helpers; int pseudo_random; int adjust_tail; TYPE_2__ adjust_head; } ;
struct bpf_verifier_env {int dummy; } ;
struct TYPE_14__ {TYPE_5__* pf; } ;
struct TYPE_13__ {TYPE_4__* pdev; } ;
struct TYPE_12__ {int dev; } ;
 int BPF_F_CURRENT_CPU ;
 int BPF_F_INDEX_MASK ;
 int BPF_REG_1 ;
 int BPF_REG_2 ;
 int BPF_REG_3 ;
 int BPF_REG_4 ;
 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int NFP_BPF_ADJUST_HEAD_NO_META ;
 int NFP_BPF_MAP_VALUE ;
 int NFP_BPF_PACKET_DATA ;
 int NFP_BPF_SCALAR_VALUE ;
 int NFP_BPF_STACK ;
 int PTR_TO_MAP_VALUE ;
 int PTR_TO_PACKET ;
 int PTR_TO_STACK ;
 int SCALAR_VALUE ;
 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;
 int dev_warn_once (int *,char*) ;
 int nfp_bpf_map_call_ok (char*,struct bpf_verifier_env*,struct nfp_insn_meta*,int ,struct bpf_reg_state const*) ;
 int nfp_bpf_map_update_value_ok (struct bpf_verifier_env*) ;
 int nfp_bpf_stack_arg_ok (char*,struct bpf_verifier_env*,struct bpf_reg_state const*,TYPE_8__*) ;
 int nfp_record_adjust_head (struct nfp_app_bpf*,struct nfp_prog*,struct nfp_insn_meta*,struct bpf_reg_state const*) ;
 int pr_vlog (struct bpf_verifier_env*,char*,...) ;
 int tnum_strn (char*,int,TYPE_7__) ;

__attribute__((used)) static int
nfp_bpf_check_helper_call(struct nfp_prog *nfp_prog,
     struct bpf_verifier_env *env,
     struct nfp_insn_meta *meta)
{
 const struct bpf_reg_state *reg1 = cur_regs(env) + BPF_REG_1;
 const struct bpf_reg_state *reg2 = cur_regs(env) + BPF_REG_2;
 const struct bpf_reg_state *reg3 = cur_regs(env) + BPF_REG_3;
 struct nfp_app_bpf *bpf = nfp_prog->bpf;
 u32 func_id = meta->insn.imm;

 switch (func_id) {
 case 129:
  if (!bpf->adjust_head.off_max) {
   pr_vlog(env, "adjust_head not supported by FW\n");
   return -EOPNOTSUPP;
  }
  if (!(bpf->adjust_head.flags & NFP_BPF_ADJUST_HEAD_NO_META)) {
   pr_vlog(env, "adjust_head: FW requires shifting metadata, not supported by the driver\n");
   return -EOPNOTSUPP;
  }

  nfp_record_adjust_head(bpf, nfp_prog, meta, reg2);
  break;

 case 128:
  if (!bpf->adjust_tail) {
   pr_vlog(env, "adjust_tail not supported by FW\n");
   return -EOPNOTSUPP;
  }
  break;

 case 132:
  if (!nfp_bpf_map_call_ok("map_lookup", env, meta,
      bpf->helpers.map_lookup, reg1) ||
      !nfp_bpf_stack_arg_ok("map_lookup", env, reg2,
       meta->func_id ? &meta->arg2 : ((void*)0)))
   return -EOPNOTSUPP;
  break;

 case 131:
  if (!nfp_bpf_map_call_ok("map_update", env, meta,
      bpf->helpers.map_update, reg1) ||
      !nfp_bpf_stack_arg_ok("map_update", env, reg2,
       meta->func_id ? &meta->arg2 : ((void*)0)) ||
      !nfp_bpf_stack_arg_ok("map_update", env, reg3, ((void*)0)) ||
      !nfp_bpf_map_update_value_ok(env))
   return -EOPNOTSUPP;
  break;

 case 133:
  if (!nfp_bpf_map_call_ok("map_delete", env, meta,
      bpf->helpers.map_delete, reg1) ||
      !nfp_bpf_stack_arg_ok("map_delete", env, reg2,
       meta->func_id ? &meta->arg2 : ((void*)0)))
   return -EOPNOTSUPP;
  break;

 case 134:
  if (bpf->pseudo_random)
   break;
  pr_vlog(env, "bpf_get_prandom_u32(): FW doesn't support random number generation\n");
  return -EOPNOTSUPP;

 case 130:
  BUILD_BUG_ON(NFP_BPF_SCALAR_VALUE != SCALAR_VALUE ||
        NFP_BPF_MAP_VALUE != PTR_TO_MAP_VALUE ||
        NFP_BPF_STACK != PTR_TO_STACK ||
        NFP_BPF_PACKET_DATA != PTR_TO_PACKET);

  if (!bpf->helpers.perf_event_output) {
   pr_vlog(env, "event_output: not supported by FW\n");
   return -EOPNOTSUPP;
  }




  if (reg3->var_off.mask & BPF_F_INDEX_MASK ||
      (reg3->var_off.value & BPF_F_INDEX_MASK) !=
      BPF_F_CURRENT_CPU) {
   char tn_buf[48];

   tnum_strn(tn_buf, sizeof(tn_buf), reg3->var_off);
   pr_vlog(env, "event_output: must use BPF_F_CURRENT_CPU, var_off: %s\n",
    tn_buf);
   return -EOPNOTSUPP;
  }




  reg1 = cur_regs(env) + BPF_REG_4;

  if (reg1->type != SCALAR_VALUE &&
      reg1->type != PTR_TO_STACK &&
      reg1->type != PTR_TO_MAP_VALUE &&
      reg1->type != PTR_TO_PACKET) {
   pr_vlog(env, "event_output: unsupported ptr type: %d\n",
    reg1->type);
   return -EOPNOTSUPP;
  }

  if (reg1->type == PTR_TO_STACK &&
      !nfp_bpf_stack_arg_ok("event_output", env, reg1, ((void*)0)))
   return -EOPNOTSUPP;
  dev_warn_once(&nfp_prog->bpf->app->pf->pdev->dev,
         "bpf: note: return codes and behavior of bpf_event_output() helper differs for offloaded programs!\n");
  pr_vlog(env, "warning: return codes and behavior of event_output helper differ for offload!\n");

  if (!meta->func_id)
   break;

  if (reg1->type != meta->arg1.type) {
   pr_vlog(env, "event_output: ptr type changed: %d %d\n",
    meta->arg1.type, reg1->type);
   return -EINVAL;
  }
  break;

 default:
  pr_vlog(env, "unsupported function id: %d\n", func_id);
  return -EOPNOTSUPP;
 }

 meta->func_id = func_id;
 meta->arg1 = *reg1;
 meta->arg2.reg = *reg2;

 return 0;
}
