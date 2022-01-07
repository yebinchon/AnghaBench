
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_h264_inst {scalar_t__ work_buf_allocated; int vpu_inst; } ;


 int h264_enc_free_work_buf (struct venc_h264_inst*) ;
 int kfree (struct venc_h264_inst*) ;
 int mtk_vcodec_debug_enter (struct venc_h264_inst*) ;
 int mtk_vcodec_debug_leave (struct venc_h264_inst*) ;
 int vpu_enc_deinit (int *) ;

__attribute__((used)) static int h264_enc_deinit(void *handle)
{
 int ret = 0;
 struct venc_h264_inst *inst = (struct venc_h264_inst *)handle;

 mtk_vcodec_debug_enter(inst);

 ret = vpu_enc_deinit(&inst->vpu_inst);

 if (inst->work_buf_allocated)
  h264_enc_free_work_buf(inst);

 mtk_vcodec_debug_leave(inst);
 kfree(inst);

 return ret;
}
