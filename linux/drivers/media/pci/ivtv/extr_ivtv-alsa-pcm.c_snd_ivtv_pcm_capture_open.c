
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct ivtv* private_data; int hw; } ;
struct snd_ivtv_card {struct snd_pcm_substream* capture_pcm_substream; struct v4l2_device* v4l2_dev; } ;
struct ivtv_stream {int s_flags; int type; int vdev; } ;
struct ivtv_open_id {int fh; int type; struct ivtv* itv; } ;
struct ivtv {int pcm_announce_callback; struct ivtv_stream* streams; } ;


 int EBUSY ;
 int ENXIO ;
 size_t IVTV_ENC_STREAM_TYPE_PCM ;
 int IVTV_F_S_STREAMING ;
 int IVTV_F_S_STREAMOFF ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int ivtv_alsa_announce_pcm_data ;
 scalar_t__ ivtv_claim_stream (struct ivtv_open_id*,int ) ;
 scalar_t__ ivtv_init_on_first_open (struct ivtv*) ;
 int ivtv_start_v4l2_encode_stream (struct ivtv_stream*) ;
 int set_bit (int ,int *) ;
 int snd_ivtv_hw_capture ;
 int snd_ivtv_lock (struct snd_ivtv_card*) ;
 int snd_ivtv_unlock (struct snd_ivtv_card*) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 struct snd_ivtv_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct ivtv* to_ivtv (struct v4l2_device*) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_fh_init (int *,int *) ;

__attribute__((used)) static int snd_ivtv_pcm_capture_open(struct snd_pcm_substream *substream)
{
 struct snd_ivtv_card *itvsc = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct v4l2_device *v4l2_dev = itvsc->v4l2_dev;
 struct ivtv *itv = to_ivtv(v4l2_dev);
 struct ivtv_stream *s;
 struct ivtv_open_id item;
 int ret;


 snd_ivtv_lock(itvsc);

 if (ivtv_init_on_first_open(itv)) {
  snd_ivtv_unlock(itvsc);
  return -ENXIO;
 }

 s = &itv->streams[IVTV_ENC_STREAM_TYPE_PCM];

 v4l2_fh_init(&item.fh, &s->vdev);
 item.itv = itv;
 item.type = s->type;


 if (ivtv_claim_stream(&item, item.type)) {

  v4l2_fh_exit(&item.fh);
  snd_ivtv_unlock(itvsc);
  return -EBUSY;
 }

 if (test_bit(IVTV_F_S_STREAMOFF, &s->s_flags) ||
     test_and_set_bit(IVTV_F_S_STREAMING, &s->s_flags)) {

  snd_ivtv_unlock(itvsc);
  return 0;
 }


 runtime->hw = snd_ivtv_hw_capture;
 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
 itvsc->capture_pcm_substream = substream;
 runtime->private_data = itv;

 itv->pcm_announce_callback = ivtv_alsa_announce_pcm_data;


 set_bit(IVTV_F_S_STREAMING, &s->s_flags);
 ret = ivtv_start_v4l2_encode_stream(s);
 snd_ivtv_unlock(itvsc);

 return ret;
}
