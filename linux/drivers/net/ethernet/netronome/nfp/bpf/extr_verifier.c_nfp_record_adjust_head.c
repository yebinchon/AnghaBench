
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nfp_prog {int adjust_head_location; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_8__ {TYPE_2__ var_off; } ;
struct TYPE_9__ {TYPE_3__ reg; } ;
struct nfp_insn_meta {unsigned int n; TYPE_4__ arg2; } ;
struct TYPE_6__ {int guaranteed_sub; scalar_t__ guaranteed_add; } ;
struct nfp_app_bpf {TYPE_1__ adjust_head; } ;
struct TYPE_10__ {int value; } ;
struct bpf_reg_state {scalar_t__ type; TYPE_5__ var_off; } ;


 int ETH_HLEN ;
 int ETH_ZLEN ;
 scalar_t__ SCALAR_VALUE ;
 unsigned int UINT_MAX ;
 int tnum_is_const (TYPE_5__) ;

__attribute__((used)) static void
nfp_record_adjust_head(struct nfp_app_bpf *bpf, struct nfp_prog *nfp_prog,
         struct nfp_insn_meta *meta,
         const struct bpf_reg_state *reg2)
{
 unsigned int location = UINT_MAX;
 int imm;





 if (reg2->type != SCALAR_VALUE || !tnum_is_const(reg2->var_off))
  goto exit_set_location;
 imm = reg2->var_off.value;

 if (imm > ETH_ZLEN - ETH_HLEN)
  goto exit_set_location;
 if (imm > (int)bpf->adjust_head.guaranteed_add ||
     imm < -bpf->adjust_head.guaranteed_sub)
  goto exit_set_location;

 if (nfp_prog->adjust_head_location) {

  if (nfp_prog->adjust_head_location != meta->n)
   goto exit_set_location;

  if (meta->arg2.reg.var_off.value != imm)
   goto exit_set_location;
 }

 location = meta->n;
exit_set_location:
 nfp_prog->adjust_head_location = location;
}
