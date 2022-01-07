
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sampling_rate; int reserved; int * count; void** start; scalar_t__ flags; scalar_t__ offset; int sample_format; int samples_per_line; } ;
struct TYPE_4__ {TYPE_1__ vbi; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int norm; } ;


 int NTSC_VBI_LINES ;
 void* NTSC_VBI_START_LINE ;
 int PAL_VBI_LINES ;
 void* PAL_VBI_START_LINE ;
 int V4L2_PIX_FMT_GREY ;
 int V4L2_STD_625_50 ;
 int VBI_LINE_LENGTH ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int vidioc_try_fmt_vbi_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;

 f->fmt.vbi.sampling_rate = 6750000 * 4;
 f->fmt.vbi.samples_per_line = VBI_LINE_LENGTH;
 f->fmt.vbi.sample_format = V4L2_PIX_FMT_GREY;
 f->fmt.vbi.offset = 0;
 f->fmt.vbi.flags = 0;
 f->fmt.vbi.start[0] = (dev->norm & V4L2_STD_625_50) ?
     PAL_VBI_START_LINE : NTSC_VBI_START_LINE;
 f->fmt.vbi.count[0] = (dev->norm & V4L2_STD_625_50) ?
     PAL_VBI_LINES : NTSC_VBI_LINES;
 f->fmt.vbi.start[1] = (dev->norm & V4L2_STD_625_50) ?
     PAL_VBI_START_LINE + 312 : NTSC_VBI_START_LINE + 263;
 f->fmt.vbi.count[1] = f->fmt.vbi.count[0];
 memset(f->fmt.vbi.reserved, 0, sizeof(f->fmt.vbi.reserved));

 return 0;

}
