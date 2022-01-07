
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_cobalt_card {size_t pb_pos; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int buffer_size; } ;


 int bytes_to_frames (TYPE_1__*,size_t) ;
 struct snd_cobalt_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static
snd_pcm_uframes_t snd_cobalt_pcm_pb_pointer(struct snd_pcm_substream *substream)
{
 struct snd_cobalt_card *cobsc = snd_pcm_substream_chip(substream);
 size_t ptr;

 ptr = cobsc->pb_pos;

 return bytes_to_frames(substream->runtime, ptr) %
        substream->runtime->buffer_size;
}
