
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_buf {size_t size; int mapped; scalar_t__ addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long VPDMA_DESC_ALIGN ;
 int WARN_ON (int) ;
 scalar_t__ kzalloc (size_t,int ) ;

int vpdma_alloc_desc_buf(struct vpdma_buf *buf, size_t size)
{
 buf->size = size;
 buf->mapped = 0;
 buf->addr = kzalloc(size, GFP_KERNEL);
 if (!buf->addr)
  return -ENOMEM;

 WARN_ON(((unsigned long)buf->addr & VPDMA_DESC_ALIGN) != 0);

 return 0;
}
