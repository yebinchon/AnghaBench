
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdec_pic_info {int buf_h; int buf_w; } ;
struct vdec_h264_inst {TYPE_1__* vsi; int ctx; struct mtk_vcodec_mem* mv_buf; } ;
struct mtk_vcodec_mem {unsigned int size; int dma_addr; scalar_t__ va; } ;
struct TYPE_2__ {int * mv_buf_dma; } ;


 int H264_MAX_FB_NUM ;
 unsigned int get_mv_buf_size (int ,int ) ;
 int mtk_vcodec_err (struct vdec_h264_inst*,char*) ;
 int mtk_vcodec_mem_alloc (int ,struct mtk_vcodec_mem*) ;
 int mtk_vcodec_mem_free (int ,struct mtk_vcodec_mem*) ;

__attribute__((used)) static int alloc_mv_buf(struct vdec_h264_inst *inst, struct vdec_pic_info *pic)
{
 int i;
 int err;
 struct mtk_vcodec_mem *mem = ((void*)0);
 unsigned int buf_sz = get_mv_buf_size(pic->buf_w, pic->buf_h);

 for (i = 0; i < H264_MAX_FB_NUM; i++) {
  mem = &inst->mv_buf[i];
  if (mem->va)
   mtk_vcodec_mem_free(inst->ctx, mem);
  mem->size = buf_sz;
  err = mtk_vcodec_mem_alloc(inst->ctx, mem);
  if (err) {
   mtk_vcodec_err(inst, "failed to allocate mv buf");
   return err;
  }
  inst->vsi->mv_buf_dma[i] = mem->dma_addr;
 }

 return 0;
}
