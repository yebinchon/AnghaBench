
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_sliced_vbi_format {int io_size; scalar_t__ service_set; scalar_t__* reserved; } ;
struct v4l2_sliced_vbi_data {int dummy; } ;
struct TYPE_2__ {struct v4l2_sliced_vbi_format sliced; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct ivtv_open_id {scalar_t__ type; struct ivtv* itv; } ;
struct ivtv {int is_50hz; } ;
struct file {int dummy; } ;


 scalar_t__ IVTV_DEC_STREAM_TYPE_VBI ;
 int check_service_set (struct v4l2_sliced_vbi_format*,int ) ;
 struct ivtv_open_id* fh2id (void*) ;
 int ivtv_expand_service_set (struct v4l2_sliced_vbi_format*,int ) ;
 int ivtv_g_fmt_sliced_vbi_cap (struct file*,void*,struct v4l2_format*) ;
 scalar_t__ ivtv_get_service_set (struct v4l2_sliced_vbi_format*) ;

__attribute__((used)) static int ivtv_try_fmt_sliced_vbi_cap(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct v4l2_sliced_vbi_format *vbifmt = &fmt->fmt.sliced;
 struct ivtv_open_id *id = fh2id(fh);
 struct ivtv *itv = id->itv;

 if (id->type == IVTV_DEC_STREAM_TYPE_VBI)
  return ivtv_g_fmt_sliced_vbi_cap(file, fh, fmt);


 vbifmt->io_size = sizeof(struct v4l2_sliced_vbi_data) * 36;
 vbifmt->reserved[0] = 0;
 vbifmt->reserved[1] = 0;

 if (vbifmt->service_set)
  ivtv_expand_service_set(vbifmt, itv->is_50hz);
 check_service_set(vbifmt, itv->is_50hz);
 vbifmt->service_set = ivtv_get_service_set(vbifmt);
 return 0;
}
