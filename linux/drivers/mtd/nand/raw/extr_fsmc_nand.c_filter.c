
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {void* private; } ;



__attribute__((used)) static bool filter(struct dma_chan *chan, void *slave)
{
 chan->private = slave;
 return 1;
}
