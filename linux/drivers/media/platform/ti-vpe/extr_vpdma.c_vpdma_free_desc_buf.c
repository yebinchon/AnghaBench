
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_buf {scalar_t__ size; int * addr; int mapped; } ;


 int WARN_ON (int ) ;
 int kfree (int *) ;

void vpdma_free_desc_buf(struct vpdma_buf *buf)
{
 WARN_ON(buf->mapped);
 kfree(buf->addr);
 buf->addr = ((void*)0);
 buf->size = 0;
}
