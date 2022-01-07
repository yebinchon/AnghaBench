
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sampling_rate; int* start; int reserved; int * count; scalar_t__ flags; scalar_t__ offset; int sample_format; int samples_per_line; } ;
struct TYPE_4__ {TYPE_1__ vbi; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct em28xx_v4l2 {int norm; int vbi_height; int vbi_width; } ;
struct em28xx {struct em28xx_v4l2* v4l2; } ;


 int V4L2_PIX_FMT_GREY ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int memset (int ,int ,int) ;
 struct em28xx* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vbi_cap(struct file *file, void *priv,
    struct v4l2_format *format)
{
 struct em28xx *dev = video_drvdata(file);
 struct em28xx_v4l2 *v4l2 = dev->v4l2;

 format->fmt.vbi.samples_per_line = v4l2->vbi_width;
 format->fmt.vbi.sample_format = V4L2_PIX_FMT_GREY;
 format->fmt.vbi.offset = 0;
 format->fmt.vbi.flags = 0;
 format->fmt.vbi.sampling_rate = 6750000 * 4 / 2;
 format->fmt.vbi.count[0] = v4l2->vbi_height;
 format->fmt.vbi.count[1] = v4l2->vbi_height;
 memset(format->fmt.vbi.reserved, 0, sizeof(format->fmt.vbi.reserved));


 if (v4l2->norm & V4L2_STD_525_60) {

  format->fmt.vbi.start[0] = 10;
  format->fmt.vbi.start[1] = 273;
 } else if (v4l2->norm & V4L2_STD_625_50) {

  format->fmt.vbi.start[0] = 6;
  format->fmt.vbi.start[1] = 318;
 }

 return 0;
}
