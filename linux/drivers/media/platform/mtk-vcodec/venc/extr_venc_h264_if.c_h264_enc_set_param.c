
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct venc_h264_inst {int work_buf_allocated; int prepend_hdr; int vpu_inst; TYPE_2__* vsi; } ;
struct venc_enc_param {int h264_level; int h264_profile; int intra_period; int frm_rate; int gop_size; int buf_height; int buf_width; int height; int width; int bitrate; int input_yuv_fmt; } ;
typedef enum venc_set_param_type { ____Placeholder_venc_set_param_type } venc_set_param_type ;
struct TYPE_3__ {int wfd; int level; int profile; int intra_period; int framerate; int gop_size; int buf_h; int buf_w; int pic_h; int pic_w; int bitrate; int input_fourcc; } ;
struct TYPE_4__ {TYPE_1__ config; } ;




 int h264_enc_alloc_work_buf (struct venc_h264_inst*) ;
 int h264_enc_free_work_buf (struct venc_h264_inst*) ;
 int h264_get_level (struct venc_h264_inst*,int ) ;
 int h264_get_profile (struct venc_h264_inst*,int ) ;
 int mtk_vcodec_debug (struct venc_h264_inst*,char*,...) ;
 int mtk_vcodec_debug_leave (struct venc_h264_inst*) ;
 int vpu_enc_set_param (int *,int,struct venc_enc_param*) ;

__attribute__((used)) static int h264_enc_set_param(void *handle,
         enum venc_set_param_type type,
         struct venc_enc_param *enc_prm)
{
 int ret = 0;
 struct venc_h264_inst *inst = (struct venc_h264_inst *)handle;

 mtk_vcodec_debug(inst, "->type=%d", type);

 switch (type) {
 case 129:
  inst->vsi->config.input_fourcc = enc_prm->input_yuv_fmt;
  inst->vsi->config.bitrate = enc_prm->bitrate;
  inst->vsi->config.pic_w = enc_prm->width;
  inst->vsi->config.pic_h = enc_prm->height;
  inst->vsi->config.buf_w = enc_prm->buf_width;
  inst->vsi->config.buf_h = enc_prm->buf_height;
  inst->vsi->config.gop_size = enc_prm->gop_size;
  inst->vsi->config.framerate = enc_prm->frm_rate;
  inst->vsi->config.intra_period = enc_prm->intra_period;
  inst->vsi->config.profile =
   h264_get_profile(inst, enc_prm->h264_profile);
  inst->vsi->config.level =
   h264_get_level(inst, enc_prm->h264_level);
  inst->vsi->config.wfd = 0;
  ret = vpu_enc_set_param(&inst->vpu_inst, type, enc_prm);
  if (ret)
   break;
  if (inst->work_buf_allocated) {
   h264_enc_free_work_buf(inst);
   inst->work_buf_allocated = 0;
  }
  ret = h264_enc_alloc_work_buf(inst);
  if (ret)
   break;
  inst->work_buf_allocated = 1;
  break;

 case 128:
  inst->prepend_hdr = 1;
  mtk_vcodec_debug(inst, "set prepend header mode");
  break;

 default:
  ret = vpu_enc_set_param(&inst->vpu_inst, type, enc_prm);
  break;
 }

 mtk_vcodec_debug_leave(inst);

 return ret;
}
