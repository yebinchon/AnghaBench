
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tw686x_video_channel {int device; } ;
struct tw686x_dev {TYPE_1__* dma_ops; struct tw686x_video_channel* video_channels; } ;
struct TYPE_2__ {int (* free ) (struct tw686x_video_channel*,unsigned int) ;} ;


 unsigned int max_channels (struct tw686x_dev*) ;
 int stub1 (struct tw686x_video_channel*,unsigned int) ;
 int video_unregister_device (int ) ;

void tw686x_video_free(struct tw686x_dev *dev)
{
 unsigned int ch, pb;

 for (ch = 0; ch < max_channels(dev); ch++) {
  struct tw686x_video_channel *vc = &dev->video_channels[ch];

  video_unregister_device(vc->device);

  if (dev->dma_ops->free)
   for (pb = 0; pb < 2; pb++)
    dev->dma_ops->free(vc, pb);
 }
}
