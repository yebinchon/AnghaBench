
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ivtv_card {int dummy; } ;


 int snd_ivtv_lock (struct snd_ivtv_card*) ;
 int snd_ivtv_unlock (struct snd_ivtv_card*) ;
 int snd_pcm_lib_ioctl (struct snd_pcm_substream*,unsigned int,void*) ;
 struct snd_ivtv_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ivtv_pcm_ioctl(struct snd_pcm_substream *substream,
       unsigned int cmd, void *arg)
{
 struct snd_ivtv_card *itvsc = snd_pcm_substream_chip(substream);
 int ret;

 snd_ivtv_lock(itvsc);
 ret = snd_pcm_lib_ioctl(substream, cmd, arg);
 snd_ivtv_unlock(itvsc);
 return ret;
}
