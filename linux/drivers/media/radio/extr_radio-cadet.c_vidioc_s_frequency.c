
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {int frequency; scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct cadet {int is_fm_band; } ;
struct TYPE_2__ {int rangehigh; int rangelow; } ;


 int EINVAL ;
 TYPE_1__* bands ;
 int cadet_setfreq (struct cadet*,int) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    const struct v4l2_frequency *f)
{
 struct cadet *dev = video_drvdata(file);

 if (f->tuner)
  return -EINVAL;
 dev->is_fm_band =
  f->frequency >= (bands[0].rangehigh + bands[1].rangelow) / 2;
 cadet_setfreq(dev, f->frequency);
 return 0;
}
