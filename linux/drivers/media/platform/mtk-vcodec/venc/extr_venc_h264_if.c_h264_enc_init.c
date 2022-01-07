
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct venc_h264_vsi {int dummy; } ;
struct TYPE_4__ {scalar_t__ vsi; int id; int dev; struct mtk_vcodec_ctx* ctx; } ;
struct venc_h264_inst {TYPE_2__ vpu_inst; struct venc_h264_vsi* vsi; struct mtk_vcodec_ctx* ctx; int hw_base; } ;
struct mtk_vcodec_ctx {struct venc_h264_inst* drv_handle; TYPE_1__* dev; } ;
struct TYPE_3__ {int vpu_plat_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IPI_VENC_H264 ;
 int VENC_SYS ;
 int kfree (struct venc_h264_inst*) ;
 struct venc_h264_inst* kzalloc (int,int ) ;
 int mtk_vcodec_debug_enter (struct venc_h264_inst*) ;
 int mtk_vcodec_debug_leave (struct venc_h264_inst*) ;
 int mtk_vcodec_get_reg_addr (struct mtk_vcodec_ctx*,int ) ;
 int vpu_enc_init (TYPE_2__*) ;

__attribute__((used)) static int h264_enc_init(struct mtk_vcodec_ctx *ctx)
{
 int ret = 0;
 struct venc_h264_inst *inst;

 inst = kzalloc(sizeof(*inst), GFP_KERNEL);
 if (!inst)
  return -ENOMEM;

 inst->ctx = ctx;
 inst->vpu_inst.ctx = ctx;
 inst->vpu_inst.dev = ctx->dev->vpu_plat_dev;
 inst->vpu_inst.id = IPI_VENC_H264;
 inst->hw_base = mtk_vcodec_get_reg_addr(inst->ctx, VENC_SYS);

 mtk_vcodec_debug_enter(inst);

 ret = vpu_enc_init(&inst->vpu_inst);

 inst->vsi = (struct venc_h264_vsi *)inst->vpu_inst.vsi;

 mtk_vcodec_debug_leave(inst);

 if (ret)
  kfree(inst);
 else
  ctx->drv_handle = inst;

 return ret;
}
