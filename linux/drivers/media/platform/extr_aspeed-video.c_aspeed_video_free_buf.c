
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_video_addr {unsigned long long dma; int * virt; scalar_t__ size; } ;
struct aspeed_video {int dev; } ;


 int dma_free_coherent (int ,scalar_t__,int *,unsigned long long) ;

__attribute__((used)) static void aspeed_video_free_buf(struct aspeed_video *video,
      struct aspeed_video_addr *addr)
{
 dma_free_coherent(video->dev, addr->size, addr->virt, addr->dma);
 addr->size = 0;
 addr->dma = 0ULL;
 addr->virt = ((void*)0);
}
