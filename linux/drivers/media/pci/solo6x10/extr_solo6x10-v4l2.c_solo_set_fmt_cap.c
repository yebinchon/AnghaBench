
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct solo_dev {int vidq; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int solo_try_fmt_cap (struct file*,void*,struct v4l2_format*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct solo_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_set_fmt_cap(struct file *file, void *priv,
       struct v4l2_format *f)
{
 struct solo_dev *solo_dev = video_drvdata(file);

 if (vb2_is_busy(&solo_dev->vidq))
  return -EBUSY;



 return solo_try_fmt_cap(file, priv, f);
}
