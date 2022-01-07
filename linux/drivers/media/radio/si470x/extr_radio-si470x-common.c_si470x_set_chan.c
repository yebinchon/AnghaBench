
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct si470x_device {int (* get_register ) (struct si470x_device*,size_t) ;int* registers; int (* set_register ) (struct si470x_device*,size_t) ;TYPE_1__ videodev; int completion; } ;


 size_t CHANNEL ;
 int CHANNEL_CHAN ;
 unsigned short CHANNEL_TUNE ;
 size_t POWERCFG ;
 int POWERCFG_DMUTE ;
 int POWERCFG_ENABLE ;
 size_t STATUSRSSI ;
 int STATUSRSSI_STC ;
 int dev_warn (int *,char*,...) ;
 int msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 int stub1 (struct si470x_device*,size_t) ;
 int stub2 (struct si470x_device*,size_t) ;
 int stub3 (struct si470x_device*,size_t) ;
 int tune_timeout ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int si470x_set_chan(struct si470x_device *radio, unsigned short chan)
{
 int retval;
 unsigned long time_left;
 bool timed_out = 0;

 retval = radio->get_register(radio, POWERCFG);
 if (retval)
  return retval;

 if ((radio->registers[POWERCFG] & (POWERCFG_ENABLE|POWERCFG_DMUTE))
  != (POWERCFG_ENABLE|POWERCFG_DMUTE)) {
  return 0;
 }


 radio->registers[CHANNEL] &= ~CHANNEL_CHAN;
 radio->registers[CHANNEL] |= CHANNEL_TUNE | chan;
 retval = radio->set_register(radio, CHANNEL);
 if (retval < 0)
  goto done;


 reinit_completion(&radio->completion);
 time_left = wait_for_completion_timeout(&radio->completion,
      msecs_to_jiffies(tune_timeout));
 if (time_left == 0)
  timed_out = 1;

 if ((radio->registers[STATUSRSSI] & STATUSRSSI_STC) == 0)
  dev_warn(&radio->videodev.dev, "tune does not complete\n");
 if (timed_out)
  dev_warn(&radio->videodev.dev,
   "tune timed out after %u ms\n", tune_timeout);


 radio->registers[CHANNEL] &= ~CHANNEL_TUNE;
 retval = radio->set_register(radio, CHANNEL);

done:
 return retval;
}
