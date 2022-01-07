
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_ivtv_card {struct v4l2_device* v4l2_dev; } ;
struct ivtv_stream {int s_flags; } ;
struct ivtv {int * pcm_announce_callback; struct ivtv_stream* streams; } ;


 size_t IVTV_ENC_STREAM_TYPE_PCM ;
 int IVTV_F_S_STREAMING ;
 int clear_bit (int ,int *) ;
 int ivtv_release_stream (struct ivtv_stream*) ;
 int ivtv_stop_v4l2_encode_stream (struct ivtv_stream*,int ) ;
 int snd_ivtv_lock (struct snd_ivtv_card*) ;
 int snd_ivtv_unlock (struct snd_ivtv_card*) ;
 struct snd_ivtv_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 struct ivtv* to_ivtv (struct v4l2_device*) ;

__attribute__((used)) static int snd_ivtv_pcm_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_ivtv_card *itvsc = snd_pcm_substream_chip(substream);
 struct v4l2_device *v4l2_dev = itvsc->v4l2_dev;
 struct ivtv *itv = to_ivtv(v4l2_dev);
 struct ivtv_stream *s;


 snd_ivtv_lock(itvsc);
 s = &itv->streams[IVTV_ENC_STREAM_TYPE_PCM];
 ivtv_stop_v4l2_encode_stream(s, 0);
 clear_bit(IVTV_F_S_STREAMING, &s->s_flags);

 ivtv_release_stream(s);

 itv->pcm_announce_callback = ((void*)0);
 snd_ivtv_unlock(itvsc);

 return 0;
}
