
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_video_addr {unsigned int size; int virt; int dma; } ;
struct aspeed_video {int dev; } ;


 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,unsigned int,int *,int ) ;

__attribute__((used)) static bool aspeed_video_alloc_buf(struct aspeed_video *video,
       struct aspeed_video_addr *addr,
       unsigned int size)
{
 addr->virt = dma_alloc_coherent(video->dev, size, &addr->dma,
     GFP_KERNEL);
 if (!addr->virt)
  return 0;

 addr->size = size;
 return 1;
}
