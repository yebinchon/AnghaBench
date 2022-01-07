
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_5__ {int entity; } ;
struct xvip_dma {TYPE_1__ pipe; int lock; TYPE_2__ video; scalar_t__ dma; } ;


 int dma_release_channel (scalar_t__) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 scalar_t__ video_is_registered (TYPE_2__*) ;
 int video_unregister_device (TYPE_2__*) ;

void xvip_dma_cleanup(struct xvip_dma *dma)
{
 if (video_is_registered(&dma->video))
  video_unregister_device(&dma->video);

 if (dma->dma)
  dma_release_channel(dma->dma);

 media_entity_cleanup(&dma->video.entity);

 mutex_destroy(&dma->lock);
 mutex_destroy(&dma->pipe.lock);
}
