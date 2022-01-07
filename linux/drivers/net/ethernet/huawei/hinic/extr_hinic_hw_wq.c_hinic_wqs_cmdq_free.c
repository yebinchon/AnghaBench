
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_wq {int num_q_pages; } ;
struct hinic_cmdq_pages {int hwif; } ;


 int cmdq_free_page (struct hinic_cmdq_pages*) ;
 int free_wq_pages (struct hinic_wq*,int ,int ) ;

void hinic_wqs_cmdq_free(struct hinic_cmdq_pages *cmdq_pages,
    struct hinic_wq *wq, int cmdq_blocks)
{
 int i;

 for (i = 0; i < cmdq_blocks; i++)
  free_wq_pages(&wq[i], cmdq_pages->hwif, wq[i].num_q_pages);

 cmdq_free_page(cmdq_pages);
}
