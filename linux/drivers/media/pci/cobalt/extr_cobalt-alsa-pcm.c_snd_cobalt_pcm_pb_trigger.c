
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_cobalt_card {int alsa_pb_channel; } ;


 int EBUSY ;
 int EINVAL ;


 struct snd_cobalt_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cobalt_pcm_pb_trigger(struct snd_pcm_substream *substream,
         int cmd)
{
 struct snd_cobalt_card *cobsc = snd_pcm_substream_chip(substream);

 switch (cmd) {
 case 129:
  if (cobsc->alsa_pb_channel)
   return -EBUSY;
  cobsc->alsa_pb_channel = 1;
  return 0;
 case 128:
  cobsc->alsa_pb_channel = 0;
  return 0;
 default:
  return -EINVAL;
 }
}
