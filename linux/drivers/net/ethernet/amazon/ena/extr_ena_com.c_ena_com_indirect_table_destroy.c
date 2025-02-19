
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_rss {unsigned long long tbl_log_size; int * host_rss_ind_tbl; int * rss_ind_tbl; int rss_ind_tbl_dma_addr; } ;
struct ena_com_dev {int dmadev; struct ena_rss rss; } ;
struct ena_admin_rss_ind_table_entry {int dummy; } ;


 int devm_kfree (int ,int *) ;
 int dma_free_coherent (int ,size_t,int *,int ) ;

__attribute__((used)) static void ena_com_indirect_table_destroy(struct ena_com_dev *ena_dev)
{
 struct ena_rss *rss = &ena_dev->rss;
 size_t tbl_size = (1ULL << rss->tbl_log_size) *
  sizeof(struct ena_admin_rss_ind_table_entry);

 if (rss->rss_ind_tbl)
  dma_free_coherent(ena_dev->dmadev, tbl_size, rss->rss_ind_tbl,
      rss->rss_ind_tbl_dma_addr);
 rss->rss_ind_tbl = ((void*)0);

 if (rss->host_rss_ind_tbl)
  devm_kfree(ena_dev->dmadev, rss->host_rss_ind_tbl);
 rss->host_rss_ind_tbl = ((void*)0);
}
