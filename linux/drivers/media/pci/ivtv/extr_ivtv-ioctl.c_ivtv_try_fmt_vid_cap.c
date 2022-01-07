
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct ivtv_open_id {scalar_t__ type; struct ivtv* itv; } ;
struct ivtv {scalar_t__ is_50hz; } ;
struct file {int dummy; } ;


 scalar_t__ IVTV_ENC_STREAM_TYPE_YUV ;
 struct ivtv_open_id* fh2id (void*) ;
 int ivtv_g_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int max (int,int) ;
 int min (int,int) ;

__attribute__((used)) static int ivtv_try_fmt_vid_cap(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct ivtv_open_id *id = fh2id(fh);
 struct ivtv *itv = id->itv;
 int w = fmt->fmt.pix.width;
 int h = fmt->fmt.pix.height;
 int min_h = 2;

 w = min(w, 720);
 w = max(w, 2);
 if (id->type == IVTV_ENC_STREAM_TYPE_YUV) {

  h &= ~0x1f;
  min_h = 32;
 }
 h = min(h, itv->is_50hz ? 576 : 480);
 h = max(h, min_h);
 ivtv_g_fmt_vid_cap(file, fh, fmt);
 fmt->fmt.pix.width = w;
 fmt->fmt.pix.height = h;
 return 0;
}
