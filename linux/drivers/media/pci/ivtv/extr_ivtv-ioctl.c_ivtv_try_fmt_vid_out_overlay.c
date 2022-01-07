
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int global_alpha; int chromakey; } ;
struct TYPE_5__ {TYPE_1__ win; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct ivtv_stream {int caps; } ;
struct ivtv {int osd_video_pbase; struct ivtv_stream* streams; } ;
struct file {int dummy; } ;
struct TYPE_6__ {size_t type; struct ivtv* itv; } ;


 int EINVAL ;
 int V4L2_CAP_VIDEO_OUTPUT_OVERLAY ;
 TYPE_3__* fh2id (void*) ;
 int ivtv_g_fmt_vid_out_overlay (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int ivtv_try_fmt_vid_out_overlay(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct ivtv *itv = fh2id(fh)->itv;
 struct ivtv_stream *s = &itv->streams[fh2id(fh)->type];
 u32 chromakey = fmt->fmt.win.chromakey;
 u8 global_alpha = fmt->fmt.win.global_alpha;

 if (!(s->caps & V4L2_CAP_VIDEO_OUTPUT_OVERLAY))
  return -EINVAL;
 if (!itv->osd_video_pbase)
  return -EINVAL;
 ivtv_g_fmt_vid_out_overlay(file, fh, fmt);
 fmt->fmt.win.chromakey = chromakey;
 fmt->fmt.win.global_alpha = global_alpha;
 return 0;
}
