
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {int snd_trigger; int snd_stream; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;






 int atomic_set (int *,int) ;
 int schedule_work (int *) ;
 struct usbtv* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_usbtv_card_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct usbtv *chip = snd_pcm_substream_chip(substream);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  atomic_set(&chip->snd_stream, 1);
  break;
 case 129:
 case 128:
 case 133:
  atomic_set(&chip->snd_stream, 0);
  break;
 default:
  return -EINVAL;
 }

 schedule_work(&chip->snd_trigger);

 return 0;
}
