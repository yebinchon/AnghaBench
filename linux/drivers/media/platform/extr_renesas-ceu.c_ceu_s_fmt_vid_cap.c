
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct ceu_device {int vb2_vq; } ;


 int EBUSY ;
 int ceu_set_fmt (struct ceu_device*,struct v4l2_format*) ;
 scalar_t__ vb2_is_streaming (int *) ;
 struct ceu_device* video_drvdata (struct file*) ;

__attribute__((used)) static int ceu_s_fmt_vid_cap(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct ceu_device *ceudev = video_drvdata(file);

 if (vb2_is_streaming(&ceudev->vb2_vq))
  return -EBUSY;

 return ceu_set_fmt(ceudev, f);
}
