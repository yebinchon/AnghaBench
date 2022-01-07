
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int pixelformat; int index; } ;
struct file {int dummy; } ;
struct camif_vp {int dummy; } ;
struct camif_fmt {int fourcc; } ;


 int EINVAL ;
 struct camif_fmt* s3c_camif_find_format (struct camif_vp*,int *,int ) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_vidioc_enum_fmt(struct file *file, void *priv,
         struct v4l2_fmtdesc *f)
{
 struct camif_vp *vp = video_drvdata(file);
 const struct camif_fmt *fmt;

 fmt = s3c_camif_find_format(vp, ((void*)0), f->index);
 if (!fmt)
  return -EINVAL;

 f->pixelformat = fmt->fourcc;
 return 0;
}
