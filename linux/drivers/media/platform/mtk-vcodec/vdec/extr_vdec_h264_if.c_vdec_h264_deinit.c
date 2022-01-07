
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_h264_inst {int vpu; } ;


 int free_mv_buf (struct vdec_h264_inst*) ;
 int free_predication_buf (struct vdec_h264_inst*) ;
 int kfree (struct vdec_h264_inst*) ;
 int mtk_vcodec_debug_enter (struct vdec_h264_inst*) ;
 int vpu_dec_deinit (int *) ;

__attribute__((used)) static void vdec_h264_deinit(void *h_vdec)
{
 struct vdec_h264_inst *inst = (struct vdec_h264_inst *)h_vdec;

 mtk_vcodec_debug_enter(inst);

 vpu_dec_deinit(&inst->vpu);
 free_predication_buf(inst);
 free_mv_buf(inst);

 kfree(inst);
}
