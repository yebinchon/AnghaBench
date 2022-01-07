
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entity; } ;
struct vsp1_video {TYPE_1__ video; } ;


 int media_entity_cleanup (int *) ;
 scalar_t__ video_is_registered (TYPE_1__*) ;
 int video_unregister_device (TYPE_1__*) ;

void vsp1_video_cleanup(struct vsp1_video *video)
{
 if (video_is_registered(&video->video))
  video_unregister_device(&video->video);

 media_entity_cleanup(&video->video.entity);
}
