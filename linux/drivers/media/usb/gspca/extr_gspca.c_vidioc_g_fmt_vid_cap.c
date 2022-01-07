
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int priv; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;
struct file {int dummy; } ;


 struct gspca_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *_priv,
    struct v4l2_format *fmt)
{
 struct gspca_dev *gspca_dev = video_drvdata(file);
 u32 priv = fmt->fmt.pix.priv;

 fmt->fmt.pix = gspca_dev->pixfmt;

 fmt->fmt.pix.priv = priv;
 return 0;
}
