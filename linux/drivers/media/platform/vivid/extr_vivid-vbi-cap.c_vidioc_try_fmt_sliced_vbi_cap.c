
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vivid_dev {int* std_cap; size_t input; int has_sliced_vbi_cap; } ;
struct v4l2_sliced_vbi_format {int service_set; } ;
struct TYPE_2__ {struct v4l2_sliced_vbi_format sliced; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_SLICED_CAPTION_525 ;
 int V4L2_SLICED_TELETEXT_B ;
 int V4L2_SLICED_WSS_625 ;
 int V4L2_STD_525_60 ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_fill_service_lines (struct v4l2_sliced_vbi_format*,int) ;
 int vivid_is_sdtv_cap (struct vivid_dev*) ;

int vidioc_try_fmt_sliced_vbi_cap(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct v4l2_sliced_vbi_format *vbi = &fmt->fmt.sliced;
 bool is_60hz = dev->std_cap[dev->input] & V4L2_STD_525_60;
 u32 service_set = vbi->service_set;

 if (!vivid_is_sdtv_cap(dev) || !dev->has_sliced_vbi_cap)
  return -EINVAL;

 service_set &= is_60hz ? V4L2_SLICED_CAPTION_525 :
     V4L2_SLICED_WSS_625 | V4L2_SLICED_TELETEXT_B;
 vivid_fill_service_lines(vbi, service_set);
 return 0;
}
