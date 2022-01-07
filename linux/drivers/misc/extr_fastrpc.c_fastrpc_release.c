
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_buf {int dummy; } ;
struct dma_buf {struct fastrpc_buf* priv; } ;


 int fastrpc_buf_free (struct fastrpc_buf*) ;

__attribute__((used)) static void fastrpc_release(struct dma_buf *dmabuf)
{
 struct fastrpc_buf *buffer = dmabuf->priv;

 fastrpc_buf_free(buffer);
}
