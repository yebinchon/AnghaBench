
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_h264_inst {int pps_buf; int ctx; int * work_bufs; } ;


 int VENC_H264_VPU_WORK_BUF_MAX ;
 int VENC_H264_VPU_WORK_BUF_SKIP_FRAME ;
 int mtk_vcodec_debug_enter (struct venc_h264_inst*) ;
 int mtk_vcodec_debug_leave (struct venc_h264_inst*) ;
 int mtk_vcodec_mem_free (int ,int *) ;

__attribute__((used)) static void h264_enc_free_work_buf(struct venc_h264_inst *inst)
{
 int i;

 mtk_vcodec_debug_enter(inst);




 for (i = 0; i < VENC_H264_VPU_WORK_BUF_MAX; i++) {
  if (i != VENC_H264_VPU_WORK_BUF_SKIP_FRAME)
   mtk_vcodec_mem_free(inst->ctx, &inst->work_bufs[i]);
 }

 mtk_vcodec_mem_free(inst->ctx, &inst->pps_buf);

 mtk_vcodec_debug_leave(inst);
}
