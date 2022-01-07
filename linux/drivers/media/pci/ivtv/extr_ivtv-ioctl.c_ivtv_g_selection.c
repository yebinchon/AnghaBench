
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int member_2; int width; int height; int left; int top; int member_3; int member_1; int member_0; } ;
struct yuv_playback_info {int osd_full_w; int osd_full_h; int track_osd; struct v4l2_rect main_rect; } ;
struct v4l2_selection {scalar_t__ type; int target; struct v4l2_rect r; } ;
struct ivtv_open_id {int type; struct ivtv* itv; } ;
struct ivtv {int v4l2_cap; int is_out_50hz; struct v4l2_rect main_rect; int is_50hz; struct yuv_playback_info yuv_info; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int IVTV_DEC_STREAM_TYPE_YUV ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_CAP_VIDEO_OUTPUT ;





 struct ivtv_open_id* fh2id (void*) ;

__attribute__((used)) static int ivtv_g_selection(struct file *file, void *fh,
       struct v4l2_selection *sel)
{
 struct ivtv_open_id *id = fh2id(fh);
 struct ivtv *itv = id->itv;
 struct yuv_playback_info *yi = &itv->yuv_info;
 struct v4l2_rect r = { 0, 0, 720, 0 };
 int streamtype = id->type;

 if (sel->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  switch (sel->target) {
  case 128:
  case 129:
   sel->r.top = sel->r.left = 0;
   sel->r.width = 720;
   sel->r.height = itv->is_50hz ? 576 : 480;
   return 0;
  default:
   return -EINVAL;
  }
 }

 if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT ||
     !(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
  return -EINVAL;

 switch (sel->target) {
 case 132:
  if (streamtype == IVTV_DEC_STREAM_TYPE_YUV)
   sel->r = yi->main_rect;
  else
   sel->r = itv->main_rect;
  return 0;
 case 130:
 case 131:
  r.height = itv->is_out_50hz ? 576 : 480;
  if (streamtype == IVTV_DEC_STREAM_TYPE_YUV && yi->track_osd) {
   r.width = yi->osd_full_w;
   r.height = yi->osd_full_h;
  }
  sel->r = r;
  return 0;
 }
 return -EINVAL;
}
