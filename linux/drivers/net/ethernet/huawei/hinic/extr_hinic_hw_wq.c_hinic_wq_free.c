
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_wqs {int hwif; } ;
struct hinic_wq {int block_idx; int page_idx; int num_q_pages; } ;


 int free_wq_pages (struct hinic_wq*,int ,int ) ;
 int wqs_return_block (struct hinic_wqs*,int ,int ) ;

void hinic_wq_free(struct hinic_wqs *wqs, struct hinic_wq *wq)
{
 free_wq_pages(wq, wqs->hwif, wq->num_q_pages);

 wqs_return_block(wqs, wq->page_idx, wq->block_idx);
}
