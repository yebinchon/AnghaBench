
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venc_vp8_inst {TYPE_1__* work_bufs; int ctx; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int VENC_VP8_VPU_WORK_BUF_MAX ;
 int mtk_vcodec_debug_enter (struct venc_vp8_inst*) ;
 int mtk_vcodec_debug_leave (struct venc_vp8_inst*) ;
 int mtk_vcodec_mem_free (int ,TYPE_1__*) ;

__attribute__((used)) static void vp8_enc_free_work_buf(struct venc_vp8_inst *inst)
{
 int i;

 mtk_vcodec_debug_enter(inst);


 for (i = 0; i < VENC_VP8_VPU_WORK_BUF_MAX; i++) {
  if (inst->work_bufs[i].size == 0)
   continue;
  mtk_vcodec_mem_free(inst->ctx, &inst->work_bufs[i]);
 }

 mtk_vcodec_debug_leave(inst);
}
