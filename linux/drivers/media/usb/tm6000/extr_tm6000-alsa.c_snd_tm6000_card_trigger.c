
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {int wq_trigger; int stream_started; } ;
struct snd_tm6000_card {struct tm6000_core* core; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;






 int atomic_set (int *,int) ;
 int schedule_work (int *) ;
 struct snd_tm6000_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_tm6000_card_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_tm6000_card *chip = snd_pcm_substream_chip(substream);
 struct tm6000_core *core = chip->core;
 int err = 0;

 switch (cmd) {
 case 132:
 case 131:
 case 130:
  atomic_set(&core->stream_started, 1);
  break;
 case 133:
 case 128:
 case 129:
  atomic_set(&core->stream_started, 0);
  break;
 default:
  err = -EINVAL;
  break;
 }
 schedule_work(&core->wq_trigger);

 return err;
}
