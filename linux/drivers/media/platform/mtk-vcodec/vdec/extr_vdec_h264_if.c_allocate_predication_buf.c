
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma_addr; int size; } ;
struct vdec_h264_inst {TYPE_2__ pred_buf; TYPE_1__* vsi; int ctx; } ;
struct TYPE_3__ {int pred_buf_dma; } ;


 int BUF_PREDICTION_SZ ;
 int mtk_vcodec_err (struct vdec_h264_inst*,char*) ;
 int mtk_vcodec_mem_alloc (int ,TYPE_2__*) ;

__attribute__((used)) static int allocate_predication_buf(struct vdec_h264_inst *inst)
{
 int err = 0;

 inst->pred_buf.size = BUF_PREDICTION_SZ;
 err = mtk_vcodec_mem_alloc(inst->ctx, &inst->pred_buf);
 if (err) {
  mtk_vcodec_err(inst, "failed to allocate ppl buf");
  return err;
 }

 inst->vsi->pred_buf_dma = inst->pred_buf.dma_addr;
 return 0;
}
