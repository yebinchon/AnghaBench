
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_modulator {int index; } ;
struct hackrf_dev {int dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int) ;
 struct hackrf_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int hackrf_s_modulator(struct file *file, void *fh,
         const struct v4l2_modulator *a)
{
 struct hackrf_dev *dev = video_drvdata(file);

 dev_dbg(dev->dev, "index=%d\n", a->index);

 return a->index > 1 ? -EINVAL : 0;
}
