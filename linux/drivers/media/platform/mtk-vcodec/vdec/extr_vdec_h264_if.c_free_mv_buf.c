
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdec_h264_inst {int ctx; struct mtk_vcodec_mem* mv_buf; TYPE_1__* vsi; } ;
struct mtk_vcodec_mem {scalar_t__ va; } ;
struct TYPE_2__ {scalar_t__* mv_buf_dma; } ;


 int H264_MAX_FB_NUM ;
 int mtk_vcodec_mem_free (int ,struct mtk_vcodec_mem*) ;

__attribute__((used)) static void free_mv_buf(struct vdec_h264_inst *inst)
{
 int i;
 struct mtk_vcodec_mem *mem = ((void*)0);

 for (i = 0; i < H264_MAX_FB_NUM; i++) {
  inst->vsi->mv_buf_dma[i] = 0;
  mem = &inst->mv_buf[i];
  if (mem->va)
   mtk_vcodec_mem_free(inst->ctx, mem);
 }
}
