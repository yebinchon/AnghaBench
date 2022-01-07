
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int tuner; int frequency; int type; } ;
struct file {int dummy; } ;
struct airspy {int f_rf; int dev; int f_adc; } ;


 int EINVAL ;
 int V4L2_TUNER_ADC ;
 int V4L2_TUNER_RF ;
 int dev_dbg (int ,char*,int ) ;
 struct airspy* video_drvdata (struct file*) ;

__attribute__((used)) static int airspy_g_frequency(struct file *file, void *priv,
  struct v4l2_frequency *f)
{
 struct airspy *s = video_drvdata(file);
 int ret;

 if (f->tuner == 0) {
  f->type = V4L2_TUNER_ADC;
  f->frequency = s->f_adc;
  dev_dbg(s->dev, "ADC frequency=%u Hz\n", s->f_adc);
  ret = 0;
 } else if (f->tuner == 1) {
  f->type = V4L2_TUNER_RF;
  f->frequency = s->f_rf;
  dev_dbg(s->dev, "RF frequency=%u Hz\n", s->f_rf);
  ret = 0;
 } else {
  ret = -EINVAL;
 }

 return ret;
}
