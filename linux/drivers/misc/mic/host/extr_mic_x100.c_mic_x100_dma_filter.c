
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_chan {TYPE_2__* device; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct device* parent; } ;



__attribute__((used)) static bool mic_x100_dma_filter(struct dma_chan *chan, void *param)
{
 if (chan->device->dev->parent == (struct device *)param)
  return 1;
 return 0;
}
