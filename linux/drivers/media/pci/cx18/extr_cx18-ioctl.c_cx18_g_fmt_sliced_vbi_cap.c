
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_sliced_vbi_format {int io_size; scalar_t__ service_set; int service_lines; scalar_t__* reserved; } ;
struct v4l2_sliced_vbi_data {int dummy; } ;
struct TYPE_3__ {struct v4l2_sliced_vbi_format sliced; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cx18 {int sd_av; } ;
struct TYPE_4__ {struct cx18* cx; } ;


 int EINVAL ;
 scalar_t__ cx18_get_service_set (struct v4l2_sliced_vbi_format*) ;
 TYPE_2__* fh2id (void*) ;
 int g_sliced_fmt ;
 int memset (int ,int ,int) ;
 scalar_t__ v4l2_subdev_call (int ,int ,int ,struct v4l2_sliced_vbi_format*) ;
 int vbi ;

__attribute__((used)) static int cx18_g_fmt_sliced_vbi_cap(struct file *file, void *fh,
     struct v4l2_format *fmt)
{
 struct cx18 *cx = fh2id(fh)->cx;
 struct v4l2_sliced_vbi_format *vbifmt = &fmt->fmt.sliced;


 vbifmt->reserved[0] = 0;
 vbifmt->reserved[1] = 0;
 vbifmt->io_size = sizeof(struct v4l2_sliced_vbi_data) * 36;
 memset(vbifmt->service_lines, 0, sizeof(vbifmt->service_lines));
 vbifmt->service_set = 0;






 if (v4l2_subdev_call(cx->sd_av, vbi, g_sliced_fmt, &fmt->fmt.sliced))
  return -EINVAL;

 vbifmt->service_set = cx18_get_service_set(vbifmt);
 return 0;
}
