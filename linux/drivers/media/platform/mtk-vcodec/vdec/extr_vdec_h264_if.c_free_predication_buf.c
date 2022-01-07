
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_vcodec_mem {scalar_t__ va; } ;
struct vdec_h264_inst {int ctx; struct mtk_vcodec_mem pred_buf; TYPE_1__* vsi; } ;
struct TYPE_2__ {scalar_t__ pred_buf_dma; } ;


 int mtk_vcodec_debug_enter (struct vdec_h264_inst*) ;
 int mtk_vcodec_mem_free (int ,struct mtk_vcodec_mem*) ;

__attribute__((used)) static void free_predication_buf(struct vdec_h264_inst *inst)
{
 struct mtk_vcodec_mem *mem = ((void*)0);

 mtk_vcodec_debug_enter(inst);

 inst->vsi->pred_buf_dma = 0;
 mem = &inst->pred_buf;
 if (mem->va)
  mtk_vcodec_mem_free(inst->ctx, mem);
}
