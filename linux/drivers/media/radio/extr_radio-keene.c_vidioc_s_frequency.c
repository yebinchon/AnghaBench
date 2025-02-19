
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {unsigned int frequency; scalar_t__ tuner; scalar_t__ type; } ;
struct keene_device {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int FREQ_MAX ;
 int FREQ_MIN ;
 int FREQ_MUL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 unsigned int clamp (unsigned int,int,int) ;
 int keene_cmd_main (struct keene_device*,unsigned int,int) ;
 struct keene_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    const struct v4l2_frequency *f)
{
 struct keene_device *radio = video_drvdata(file);
 unsigned freq = f->frequency;

 if (f->tuner != 0 || f->type != V4L2_TUNER_RADIO)
  return -EINVAL;
 freq = clamp(freq, FREQ_MIN * FREQ_MUL, FREQ_MAX * FREQ_MUL);
 return keene_cmd_main(radio, freq, 1);
}
