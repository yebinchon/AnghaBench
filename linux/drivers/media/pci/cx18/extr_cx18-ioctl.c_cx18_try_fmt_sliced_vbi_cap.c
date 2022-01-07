
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_sliced_vbi_format {int io_size; scalar_t__ service_set; scalar_t__* reserved; } ;
struct v4l2_sliced_vbi_data {int dummy; } ;
struct TYPE_3__ {struct v4l2_sliced_vbi_format sliced; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cx18 {int is_50hz; } ;
struct TYPE_4__ {struct cx18* cx; } ;


 scalar_t__ check_service_set (struct v4l2_sliced_vbi_format*,int ) ;
 int cx18_expand_service_set (struct v4l2_sliced_vbi_format*,int ) ;
 scalar_t__ cx18_get_service_set (struct v4l2_sliced_vbi_format*) ;
 TYPE_2__* fh2id (void*) ;

__attribute__((used)) static int cx18_try_fmt_sliced_vbi_cap(struct file *file, void *fh,
     struct v4l2_format *fmt)
{
 struct cx18 *cx = fh2id(fh)->cx;
 struct v4l2_sliced_vbi_format *vbifmt = &fmt->fmt.sliced;

 vbifmt->io_size = sizeof(struct v4l2_sliced_vbi_data) * 36;
 vbifmt->reserved[0] = 0;
 vbifmt->reserved[1] = 0;


 if (vbifmt->service_set)
  cx18_expand_service_set(vbifmt, cx->is_50hz);

 if (check_service_set(vbifmt, cx->is_50hz))
  vbifmt->service_set = cx18_get_service_set(vbifmt);
 return 0;
}
