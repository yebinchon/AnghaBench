
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_size_t ;
struct TYPE_6__ {scalar_t__ overflow; scalar_t__ eventr; scalar_t__ eventw; int lock; int wait_queue; } ;
struct TYPE_5__ {int display_format; void* video_format; int stream_source; int play_state; scalar_t__ video_blank; } ;
struct TYPE_4__ {scalar_t__ bypass_mode; int channel_select; int stream_source; int play_state; scalar_t__ mute_state; scalar_t__ AV_sync_state; } ;
struct av7110 {int audio_dev; int dvb_adapter; int video_dev; int video_size; TYPE_3__ video_events; int display_panscan; void* display_ar; TYPE_2__ videostate; TYPE_1__ audiostate; } ;


 int AUDIO_SOURCE_DEMUX ;
 int AUDIO_STEREO ;
 int AUDIO_STOPPED ;
 int DVB_DEVICE_AUDIO ;
 int DVB_DEVICE_VIDEO ;
 void* VIDEO_FORMAT_4_3 ;
 int VIDEO_LETTER_BOX ;
 int VIDEO_SOURCE_DEMUX ;
 int VIDEO_STOPPED ;
 int VID_VC_AND_PS_PREF ;
 int dvb_register_device (int *,int *,int *,struct av7110*,int ,int ) ;
 int dvbdev_audio ;
 int dvbdev_video ;
 int init_waitqueue_head (int *) ;
 int memset (int *,int ,int) ;
 int spin_lock_init (int *) ;

int av7110_av_register(struct av7110 *av7110)
{
 av7110->audiostate.AV_sync_state = 0;
 av7110->audiostate.mute_state = 0;
 av7110->audiostate.play_state = AUDIO_STOPPED;
 av7110->audiostate.stream_source = AUDIO_SOURCE_DEMUX;
 av7110->audiostate.channel_select = AUDIO_STEREO;
 av7110->audiostate.bypass_mode = 0;

 av7110->videostate.video_blank = 0;
 av7110->videostate.play_state = VIDEO_STOPPED;
 av7110->videostate.stream_source = VIDEO_SOURCE_DEMUX;
 av7110->videostate.video_format = VIDEO_FORMAT_4_3;
 av7110->videostate.display_format = VIDEO_LETTER_BOX;
 av7110->display_ar = VIDEO_FORMAT_4_3;
 av7110->display_panscan = VID_VC_AND_PS_PREF;

 init_waitqueue_head(&av7110->video_events.wait_queue);
 spin_lock_init(&av7110->video_events.lock);
 av7110->video_events.eventw = av7110->video_events.eventr = 0;
 av7110->video_events.overflow = 0;
 memset(&av7110->video_size, 0, sizeof (video_size_t));

 dvb_register_device(&av7110->dvb_adapter, &av7110->video_dev,
       &dvbdev_video, av7110, DVB_DEVICE_VIDEO, 0);

 dvb_register_device(&av7110->dvb_adapter, &av7110->audio_dev,
       &dvbdev_audio, av7110, DVB_DEVICE_AUDIO, 0);

 return 0;
}
