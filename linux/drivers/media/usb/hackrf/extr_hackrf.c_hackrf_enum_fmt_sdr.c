
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct hackrf_dev {int dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int pixelformat; } ;


 int EINVAL ;
 size_t NUM_FORMATS ;
 int dev_dbg (int ,char*,size_t) ;
 TYPE_1__* formats ;
 struct hackrf_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int hackrf_enum_fmt_sdr(struct file *file, void *priv,
          struct v4l2_fmtdesc *f)
{
 struct hackrf_dev *dev = video_drvdata(file);

 dev_dbg(dev->dev, "index=%d\n", f->index);

 if (f->index >= NUM_FORMATS)
  return -EINVAL;

 f->pixelformat = formats[f->index].pixelformat;

 return 0;
}
