
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct isp_video {int mutex; int stream_lock; int queue_lock; TYPE_1__ video; } ;


 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;

void omap3isp_video_cleanup(struct isp_video *video)
{
 media_entity_cleanup(&video->video.entity);
 mutex_destroy(&video->queue_lock);
 mutex_destroy(&video->stream_lock);
 mutex_destroy(&video->mutex);
}
