
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int entity; } ;
struct camss_video {TYPE_1__* camss; int lock; int q_lock; } ;
struct TYPE_2__ {int ref_count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int camss_delete (TYPE_1__*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct camss_video* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void msm_video_release(struct video_device *vdev)
{
 struct camss_video *video = video_get_drvdata(vdev);

 media_entity_cleanup(&vdev->entity);

 mutex_destroy(&video->q_lock);
 mutex_destroy(&video->lock);

 if (atomic_dec_and_test(&video->camss->ref_count))
  camss_delete(video->camss);
}
