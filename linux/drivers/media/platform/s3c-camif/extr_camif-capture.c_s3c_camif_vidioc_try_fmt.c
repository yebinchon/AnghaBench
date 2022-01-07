
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct camif_vp {int dummy; } ;


 int __camif_video_try_format (struct camif_vp*,int *,int *) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_vidioc_try_fmt(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct camif_vp *vp = video_drvdata(file);
 return __camif_video_try_format(vp, &f->fmt.pix, ((void*)0));
}
