
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_buf {int phys; int virt; int size; int dev; } ;


 int FASTRPC_PHYS (int ) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (struct fastrpc_buf*) ;

__attribute__((used)) static void fastrpc_buf_free(struct fastrpc_buf *buf)
{
 dma_free_coherent(buf->dev, buf->size, buf->virt,
     FASTRPC_PHYS(buf->phys));
 kfree(buf);
}
