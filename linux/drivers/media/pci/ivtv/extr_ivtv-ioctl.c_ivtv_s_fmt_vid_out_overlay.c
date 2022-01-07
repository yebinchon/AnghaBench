
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int global_alpha; int chromakey; } ;
struct TYPE_5__ {TYPE_1__ win; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct ivtv {int osd_global_alpha; int osd_chroma_key; } ;
struct file {int dummy; } ;
struct TYPE_6__ {struct ivtv* itv; } ;


 TYPE_3__* fh2id (void*) ;
 int ivtv_set_osd_alpha (struct ivtv*) ;
 int ivtv_try_fmt_vid_out_overlay (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int ivtv_s_fmt_vid_out_overlay(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct ivtv *itv = fh2id(fh)->itv;
 int ret = ivtv_try_fmt_vid_out_overlay(file, fh, fmt);

 if (ret == 0) {
  itv->osd_chroma_key = fmt->fmt.win.chromakey;
  itv->osd_global_alpha = fmt->fmt.win.global_alpha;
  ivtv_set_osd_alpha(itv);
 }
 return ret;
}
