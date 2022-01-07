
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_sge_resp {int sge; } ;
struct hinic_cmdq_completion {struct hinic_sge_resp sge_resp; } ;
struct hinic_cmdq_buf {int size; int dma_addr; } ;


 int hinic_set_sge (int *,int ,int ) ;

__attribute__((used)) static void cmdq_set_sge_completion(struct hinic_cmdq_completion *completion,
        struct hinic_cmdq_buf *buf_out)
{
 struct hinic_sge_resp *sge_resp = &completion->sge_resp;

 hinic_set_sge(&sge_resp->sge, buf_out->dma_addr, buf_out->size);
}
