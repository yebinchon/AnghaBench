
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ tuner_type; } ;
struct cx88_core {int field; int height; int width; TYPE_1__ board; } ;
struct cx8802_dev {int vb2_mpegq; struct cx88_core* core; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int blackbird_initialize_codec (struct cx8802_dev*) ;
 int blackbird_start_codec (struct cx8802_dev*) ;
 int blackbird_stop_codec (struct cx8802_dev*) ;
 int cx88_set_freq (struct cx88_core*,struct v4l2_frequency const*) ;
 int cx88_set_scale (struct cx88_core*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int vb2_start_streaming_called (int *) ;
 struct cx8802_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
         const struct v4l2_frequency *f)
{
 struct cx8802_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;
 bool streaming;

 if (unlikely(core->board.tuner_type == UNSET))
  return -EINVAL;
 if (unlikely(f->tuner != 0))
  return -EINVAL;
 streaming = vb2_start_streaming_called(&dev->vb2_mpegq);
 if (streaming)
  blackbird_stop_codec(dev);

 cx88_set_freq(core, f);
 blackbird_initialize_codec(dev);
 cx88_set_scale(core, core->width, core->height, core->field);
 if (streaming)
  blackbird_start_codec(dev);
 return 0;
}
