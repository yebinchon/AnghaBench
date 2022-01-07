
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int video_dev; int audio_dev; } ;


 int dvb_unregister_device (int ) ;

void av7110_av_unregister(struct av7110 *av7110)
{
 dvb_unregister_device(av7110->audio_dev);
 dvb_unregister_device(av7110->video_dev);
}
