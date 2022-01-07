
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct sta2x11_vip {int format; } ;
struct file {int dummy; } ;


 struct sta2x11_vip* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct sta2x11_vip *vip = video_drvdata(file);

 f->fmt.pix = vip->format;

 return 0;
}
