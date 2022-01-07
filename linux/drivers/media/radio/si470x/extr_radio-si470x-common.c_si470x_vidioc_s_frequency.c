
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {scalar_t__ tuner; scalar_t__ frequency; } ;
struct si470x_device {size_t band; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ rangelow; scalar_t__ rangehigh; } ;


 int EINVAL ;
 TYPE_1__* bands ;
 int si470x_set_band (struct si470x_device*,int) ;
 int si470x_set_freq (struct si470x_device*,scalar_t__) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_vidioc_s_frequency(struct file *file, void *priv,
  const struct v4l2_frequency *freq)
{
 struct si470x_device *radio = video_drvdata(file);
 int retval;

 if (freq->tuner != 0)
  return -EINVAL;

 if (freq->frequency < bands[radio->band].rangelow ||
     freq->frequency > bands[radio->band].rangehigh) {

  retval = si470x_set_band(radio, 1);
  if (retval)
   return retval;
 }
 return si470x_set_freq(radio, freq->frequency);
}
