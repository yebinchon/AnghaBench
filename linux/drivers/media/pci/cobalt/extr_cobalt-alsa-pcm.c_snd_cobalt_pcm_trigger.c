
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;



__attribute__((used)) static int snd_cobalt_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 switch (cmd) {
 case 129:
 case 128:
  return 0;
 default:
  return -EINVAL;
 }
 return 0;
}
