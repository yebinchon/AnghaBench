
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {int snd_trigger; int snd_stream; } ;
struct snd_pcm_substream {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int schedule_work (int *) ;
 struct usbtv* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_usbtv_pcm_close(struct snd_pcm_substream *substream)
{
 struct usbtv *chip = snd_pcm_substream_chip(substream);

 if (atomic_read(&chip->snd_stream)) {
  atomic_set(&chip->snd_stream, 0);
  schedule_work(&chip->snd_trigger);
 }

 return 0;
}
