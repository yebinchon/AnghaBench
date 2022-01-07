
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_mem {scalar_t__ va; } ;
struct vdec_vp9_inst {int ctx; struct mtk_vcodec_mem mem; } ;


 int mtk_vcodec_mem_free (int ,struct mtk_vcodec_mem*) ;

__attribute__((used)) static void vp9_free_inst(struct vdec_vp9_inst *inst)
{
 struct mtk_vcodec_mem mem;

 mem = inst->mem;
 if (mem.va)
  mtk_vcodec_mem_free(inst->ctx, &mem);
}
