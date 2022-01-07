
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vpe_mmr_adb {int * dei_regs; } ;
struct vpe_dei_regs {int edi_lut_reg3; int edi_lut_reg2; int edi_lut_reg1; int edi_lut_reg0; int edi_config_reg; int mdt_spacial_freq_thr_reg; } ;
struct TYPE_2__ {struct vpe_mmr_adb* addr; } ;
struct vpe_ctx {int load_mmrs; TYPE_1__ mmr_adb; } ;


 struct vpe_dei_regs dei_regs ;

__attribute__((used)) static void set_dei_shadow_registers(struct vpe_ctx *ctx)
{
 struct vpe_mmr_adb *mmr_adb = ctx->mmr_adb.addr;
 u32 *dei_mmr = &mmr_adb->dei_regs[0];
 const struct vpe_dei_regs *cur = &dei_regs;

 dei_mmr[2] = cur->mdt_spacial_freq_thr_reg;
 dei_mmr[3] = cur->edi_config_reg;
 dei_mmr[4] = cur->edi_lut_reg0;
 dei_mmr[5] = cur->edi_lut_reg1;
 dei_mmr[6] = cur->edi_lut_reg2;
 dei_mmr[7] = cur->edi_lut_reg3;

 ctx->load_mmrs = 1;
}
