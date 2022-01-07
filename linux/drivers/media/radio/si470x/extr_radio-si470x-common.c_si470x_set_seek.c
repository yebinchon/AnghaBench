
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_hw_freq_seek {scalar_t__ rangelow; scalar_t__ rangehigh; scalar_t__ seek_upward; scalar_t__ wrap_around; } ;
struct TYPE_4__ {int dev; } ;
struct si470x_device {int band; int* registers; int (* set_register ) (struct si470x_device*,size_t) ;TYPE_1__ videodev; int completion; } ;
struct TYPE_5__ {scalar_t__ rangelow; scalar_t__ rangehigh; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 int ENODATA ;
 size_t POWERCFG ;
 int POWERCFG_SEEK ;
 int POWERCFG_SEEKUP ;
 int POWERCFG_SKMODE ;
 size_t STATUSRSSI ;
 int STATUSRSSI_SF ;
 int STATUSRSSI_STC ;
 TYPE_2__* bands ;
 int dev_warn (int *,char*) ;
 int msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 int seek_timeout ;
 int si470x_get_freq (struct si470x_device*,unsigned int*) ;
 int si470x_set_band (struct si470x_device*,int) ;
 int si470x_set_freq (struct si470x_device*,unsigned int) ;
 int stub1 (struct si470x_device*,size_t) ;
 int stub2 (struct si470x_device*,size_t) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int si470x_set_seek(struct si470x_device *radio,
      const struct v4l2_hw_freq_seek *seek)
{
 int band, retval;
 unsigned int freq;
 bool timed_out = 0;
 unsigned long time_left;


 if (seek->rangelow || seek->rangehigh) {
  for (band = 0; band < ARRAY_SIZE(bands); band++) {
   if (bands[band].rangelow == seek->rangelow &&
       bands[band].rangehigh == seek->rangehigh)
    break;
  }
  if (band == ARRAY_SIZE(bands))
   return -EINVAL;
 } else
  band = 1;

 if (radio->band != band) {
  retval = si470x_get_freq(radio, &freq);
  if (retval)
   return retval;
  retval = si470x_set_band(radio, band);
  if (retval)
   return retval;
  retval = si470x_set_freq(radio, freq);
  if (retval)
   return retval;
 }


 radio->registers[POWERCFG] |= POWERCFG_SEEK;
 if (seek->wrap_around)
  radio->registers[POWERCFG] &= ~POWERCFG_SKMODE;
 else
  radio->registers[POWERCFG] |= POWERCFG_SKMODE;
 if (seek->seek_upward)
  radio->registers[POWERCFG] |= POWERCFG_SEEKUP;
 else
  radio->registers[POWERCFG] &= ~POWERCFG_SEEKUP;
 retval = radio->set_register(radio, POWERCFG);
 if (retval < 0)
  return retval;


 reinit_completion(&radio->completion);
 time_left = wait_for_completion_timeout(&radio->completion,
      msecs_to_jiffies(seek_timeout));
 if (time_left == 0)
  timed_out = 1;

 if ((radio->registers[STATUSRSSI] & STATUSRSSI_STC) == 0)
  dev_warn(&radio->videodev.dev, "seek does not complete\n");
 if (radio->registers[STATUSRSSI] & STATUSRSSI_SF)
  dev_warn(&radio->videodev.dev,
   "seek failed / band limit reached\n");


 radio->registers[POWERCFG] &= ~POWERCFG_SEEK;
 retval = radio->set_register(radio, POWERCFG);


 if (retval == 0 && timed_out)
  return -ENODATA;
 return retval;
}
