
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct camss_video {TYPE_1__* camss; int vdev; } ;
struct TYPE_2__ {int ref_count; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int video_unregister_device (int *) ;

void msm_video_unregister(struct camss_video *video)
{
 atomic_inc(&video->camss->ref_count);
 video_unregister_device(&video->vdev);
 atomic_dec(&video->camss->ref_count);
}
