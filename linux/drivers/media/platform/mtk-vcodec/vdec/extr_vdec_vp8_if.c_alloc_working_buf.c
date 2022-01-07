
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct mtk_vcodec_mem {scalar_t__ dma_addr; int size; } ;
struct vdec_vp8_inst {TYPE_2__* vsi; int ctx; struct mtk_vcodec_mem working_buf; } ;
struct TYPE_3__ {scalar_t__ working_buf_dma; } ;
struct TYPE_4__ {TYPE_1__ dec; } ;


 int VP8_WORKING_BUF_SZ ;
 int mtk_vcodec_err (struct vdec_vp8_inst*,char*) ;
 int mtk_vcodec_mem_alloc (int ,struct mtk_vcodec_mem*) ;

__attribute__((used)) static int alloc_working_buf(struct vdec_vp8_inst *inst)
{
 int err;
 struct mtk_vcodec_mem *mem = &inst->working_buf;

 mem->size = VP8_WORKING_BUF_SZ;
 err = mtk_vcodec_mem_alloc(inst->ctx, mem);
 if (err) {
  mtk_vcodec_err(inst, "Cannot allocate working buffer");
  return err;
 }

 inst->vsi->dec.working_buf_dma = (uint64_t)mem->dma_addr;
 return 0;
}
