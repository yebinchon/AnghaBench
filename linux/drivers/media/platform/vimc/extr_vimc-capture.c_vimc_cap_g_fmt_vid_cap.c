
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vimc_cap_device {int format; } ;
struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;


 struct vimc_cap_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vimc_cap_g_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct vimc_cap_device *vcap = video_drvdata(file);

 f->fmt.pix = vcap->format;

 return 0;
}
