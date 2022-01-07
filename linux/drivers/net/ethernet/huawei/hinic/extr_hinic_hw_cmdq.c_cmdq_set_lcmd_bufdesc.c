
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sge; } ;
struct hinic_cmdq_wqe_lcmd {TYPE_1__ buf_desc; } ;
struct hinic_cmdq_buf {int size; int dma_addr; } ;


 int hinic_set_sge (int *,int ,int ) ;

__attribute__((used)) static void cmdq_set_lcmd_bufdesc(struct hinic_cmdq_wqe_lcmd *wqe_lcmd,
      struct hinic_cmdq_buf *buf_in)
{
 hinic_set_sge(&wqe_lcmd->buf_desc.sge, buf_in->dma_addr, buf_in->size);
}
