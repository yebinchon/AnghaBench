
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_vcodec_mem {scalar_t__ va; } ;
struct vdec_vp8_inst {TYPE_2__* vsi; int ctx; struct mtk_vcodec_mem working_buf; } ;
struct TYPE_3__ {scalar_t__ working_buf_dma; } ;
struct TYPE_4__ {TYPE_1__ dec; } ;


 int mtk_vcodec_mem_free (int ,struct mtk_vcodec_mem*) ;

__attribute__((used)) static void free_working_buf(struct vdec_vp8_inst *inst)
{
 struct mtk_vcodec_mem *mem = &inst->working_buf;

 if (mem->va)
  mtk_vcodec_mem_free(inst->ctx, mem);

 inst->vsi->dec.working_buf_dma = 0;
}
