
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {scalar_t__ sglen; int * sglist; int direction; int nr_pages; int magic; } ;
struct device {int dummy; } ;


 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_DMABUF ;
 int dma_unmap_sg (struct device*,int *,int ,int ) ;
 int vfree (int *) ;

int videobuf_dma_unmap(struct device *dev, struct videobuf_dmabuf *dma)
{
 MAGIC_CHECK(dma->magic, MAGIC_DMABUF);

 if (!dma->sglen)
  return 0;

 dma_unmap_sg(dev, dma->sglist, dma->nr_pages, dma->direction);

 vfree(dma->sglist);
 dma->sglist = ((void*)0);
 dma->sglen = 0;

 return 0;
}
