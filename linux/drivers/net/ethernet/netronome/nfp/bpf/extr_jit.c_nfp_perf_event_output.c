
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct nfp_insn_meta {scalar_t__ func_id; TYPE_1__ arg1; } ;


 scalar_t__ BR_OFF_RELO ;
 int BR_UNC ;
 int EINVAL ;
 int RELO_BR_HELPER ;
 int RELO_IMMED_REL ;
 int emit_br_relo (struct nfp_prog*,int ,scalar_t__,int,int ) ;
 int imm_a (struct nfp_prog*) ;
 int nfp_prog_confirm_current_offset (struct nfp_prog*,scalar_t__) ;
 scalar_t__ nfp_prog_current_offset (struct nfp_prog*) ;
 int reg_a (int) ;
 int reg_b (int ) ;
 int ur_load_imm_any (struct nfp_prog*,int ,int ) ;
 int wrp_immed_relo (struct nfp_prog*,int ,scalar_t__,int ) ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int
nfp_perf_event_output(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 swreg ptr_type;
 u32 ret_tgt;

 ptr_type = ur_load_imm_any(nfp_prog, meta->arg1.type, imm_a(nfp_prog));

 ret_tgt = nfp_prog_current_offset(nfp_prog) + 3;

 emit_br_relo(nfp_prog, BR_UNC, BR_OFF_RELO + meta->func_id,
       2, RELO_BR_HELPER);


 wrp_mov(nfp_prog, reg_a(1), ptr_type);


 wrp_immed_relo(nfp_prog, reg_b(0), ret_tgt, RELO_IMMED_REL);

 if (!nfp_prog_confirm_current_offset(nfp_prog, ret_tgt))
  return -EINVAL;

 return 0;
}
