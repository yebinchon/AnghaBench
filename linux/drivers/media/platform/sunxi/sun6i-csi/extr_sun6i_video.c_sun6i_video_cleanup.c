
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct sun6i_video {int lock; int vb2_vidq; TYPE_1__ vdev; } ;


 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int vb2_queue_release (int *) ;
 int video_unregister_device (TYPE_1__*) ;

void sun6i_video_cleanup(struct sun6i_video *video)
{
 video_unregister_device(&video->vdev);
 media_entity_cleanup(&video->vdev.entity);
 vb2_queue_release(&video->vb2_vidq);
 mutex_destroy(&video->lock);
}
