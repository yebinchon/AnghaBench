
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vpe_mmr_adb {int * us3_regs; int * us2_regs; int * us1_regs; } ;
struct vpe_fmt {scalar_t__ fourcc; } ;
struct TYPE_3__ {struct vpe_mmr_adb* addr; } ;
struct vpe_ctx {int load_mmrs; TYPE_1__ mmr_adb; TYPE_2__* q_data; } ;
struct TYPE_4__ {struct vpe_fmt* fmt; } ;


 size_t Q_DATA_SRC ;
 scalar_t__ V4L2_PIX_FMT_NV12 ;
 int VPE_US_MODE_MASK ;
 int VPE_US_MODE_SHIFT ;
 int write_field (int *,int,int ,int ) ;

__attribute__((used)) static void set_cfg_modes(struct vpe_ctx *ctx)
{
 struct vpe_fmt *fmt = ctx->q_data[Q_DATA_SRC].fmt;
 struct vpe_mmr_adb *mmr_adb = ctx->mmr_adb.addr;
 u32 *us1_reg0 = &mmr_adb->us1_regs[0];
 u32 *us2_reg0 = &mmr_adb->us2_regs[0];
 u32 *us3_reg0 = &mmr_adb->us3_regs[0];
 int cfg_mode = 1;






 if (fmt->fourcc == V4L2_PIX_FMT_NV12)
  cfg_mode = 0;

 write_field(us1_reg0, cfg_mode, VPE_US_MODE_MASK, VPE_US_MODE_SHIFT);
 write_field(us2_reg0, cfg_mode, VPE_US_MODE_MASK, VPE_US_MODE_SHIFT);
 write_field(us3_reg0, cfg_mode, VPE_US_MODE_MASK, VPE_US_MODE_SHIFT);

 ctx->load_mmrs = 1;
}
