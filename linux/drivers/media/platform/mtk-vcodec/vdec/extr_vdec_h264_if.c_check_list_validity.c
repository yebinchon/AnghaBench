
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdec_h264_inst {TYPE_1__* vsi; } ;
struct h264_ring_fb_list {scalar_t__ count; scalar_t__ read_idx; scalar_t__ write_idx; } ;
struct TYPE_2__ {struct h264_ring_fb_list list_free; struct h264_ring_fb_list list_disp; } ;


 int EINVAL ;
 scalar_t__ H264_MAX_FB_NUM ;
 int mtk_vcodec_err (struct vdec_h264_inst*,char*,char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int check_list_validity(struct vdec_h264_inst *inst, bool disp_list)
{
 struct h264_ring_fb_list *list;

 list = disp_list ? &inst->vsi->list_disp : &inst->vsi->list_free;

 if (list->count > H264_MAX_FB_NUM ||
     list->read_idx >= H264_MAX_FB_NUM ||
     list->write_idx >= H264_MAX_FB_NUM) {
  mtk_vcodec_err(inst, "%s list err: cnt=%d r_idx=%d w_idx=%d",
          disp_list ? "disp" : "free", list->count,
          list->read_idx, list->write_idx);
  return -EINVAL;
 }

 return 0;
}
