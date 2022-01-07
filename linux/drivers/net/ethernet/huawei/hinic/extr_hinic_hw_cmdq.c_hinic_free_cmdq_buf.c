
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_cmdqs {int cmdq_buf_pool; } ;
struct hinic_cmdq_buf {int dma_addr; int buf; } ;


 int dma_pool_free (int ,int ,int ) ;

void hinic_free_cmdq_buf(struct hinic_cmdqs *cmdqs,
    struct hinic_cmdq_buf *cmdq_buf)
{
 dma_pool_free(cmdqs->cmdq_buf_pool, cmdq_buf->buf, cmdq_buf->dma_addr);
}
