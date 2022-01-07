
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivid_dev {int service_set_cap; int has_sliced_vbi_cap; } ;
struct v4l2_sliced_vbi_format {int dummy; } ;
struct TYPE_2__ {struct v4l2_sliced_vbi_format sliced; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_fill_service_lines (struct v4l2_sliced_vbi_format*,int ) ;
 int vivid_is_sdtv_cap (struct vivid_dev*) ;

int vidioc_g_fmt_sliced_vbi_cap(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct v4l2_sliced_vbi_format *vbi = &fmt->fmt.sliced;

 if (!vivid_is_sdtv_cap(dev) || !dev->has_sliced_vbi_cap)
  return -EINVAL;

 vivid_fill_service_lines(vbi, dev->service_set_cap);
 return 0;
}
