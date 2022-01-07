
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct ceu_device {int dummy; } ;


 int ceu_try_fmt (struct ceu_device*,struct v4l2_format*) ;
 struct ceu_device* video_drvdata (struct file*) ;

__attribute__((used)) static int ceu_try_fmt_vid_cap(struct file *file, void *priv,
          struct v4l2_format *f)
{
 struct ceu_device *ceudev = video_drvdata(file);

 return ceu_try_fmt(ceudev, f);
}
