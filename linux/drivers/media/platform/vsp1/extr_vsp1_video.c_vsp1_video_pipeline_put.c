
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vsp1_pipeline {int kref; TYPE_3__* output; } ;
struct media_device {int graph_mutex; } ;
struct TYPE_5__ {TYPE_1__* vsp1; } ;
struct TYPE_6__ {TYPE_2__ entity; } ;
struct TYPE_4__ {struct media_device media_dev; } ;


 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vsp1_video_pipeline_release ;

__attribute__((used)) static void vsp1_video_pipeline_put(struct vsp1_pipeline *pipe)
{
 struct media_device *mdev = &pipe->output->entity.vsp1->media_dev;

 mutex_lock(&mdev->graph_mutex);
 kref_put(&pipe->kref, vsp1_video_pipeline_release);
 mutex_unlock(&mdev->graph_mutex);
}
