
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ena_rss {int tbl_log_size; int * rss_ind_tbl; int rss_ind_tbl_dma_addr; int host_rss_ind_tbl; } ;
struct ena_com_dev {int dmadev; struct ena_rss rss; } ;
struct ena_admin_rss_ind_table_entry {int dummy; } ;
struct TYPE_3__ {int min_size; int max_size; } ;
struct TYPE_4__ {TYPE_1__ ind_table; } ;
struct ena_admin_get_feat_resp {TYPE_2__ u; } ;


 int EINVAL ;
 int ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kzalloc (int ,size_t,int ) ;
 int * dma_alloc_coherent (int ,size_t,int *,int ) ;
 int dma_free_coherent (int ,size_t,int *,int ) ;
 int ena_com_get_feature (struct ena_com_dev*,struct ena_admin_get_feat_resp*,int ,int ) ;
 int pr_err (char*,int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_indirect_table_allocate(struct ena_com_dev *ena_dev,
        u16 log_size)
{
 struct ena_rss *rss = &ena_dev->rss;
 struct ena_admin_get_feat_resp get_resp;
 size_t tbl_size;
 int ret;

 ret = ena_com_get_feature(ena_dev, &get_resp,
      ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG, 0);
 if (unlikely(ret))
  return ret;

 if ((get_resp.u.ind_table.min_size > log_size) ||
     (get_resp.u.ind_table.max_size < log_size)) {
  pr_err("indirect table size doesn't fit. requested size: %d while min is:%d and max %d\n",
         1 << log_size, 1 << get_resp.u.ind_table.min_size,
         1 << get_resp.u.ind_table.max_size);
  return -EINVAL;
 }

 tbl_size = (1ULL << log_size) *
  sizeof(struct ena_admin_rss_ind_table_entry);

 rss->rss_ind_tbl =
  dma_alloc_coherent(ena_dev->dmadev, tbl_size,
       &rss->rss_ind_tbl_dma_addr, GFP_KERNEL);
 if (unlikely(!rss->rss_ind_tbl))
  goto mem_err1;

 tbl_size = (1ULL << log_size) * sizeof(u16);
 rss->host_rss_ind_tbl =
  devm_kzalloc(ena_dev->dmadev, tbl_size, GFP_KERNEL);
 if (unlikely(!rss->host_rss_ind_tbl))
  goto mem_err2;

 rss->tbl_log_size = log_size;

 return 0;

mem_err2:
 tbl_size = (1ULL << log_size) *
  sizeof(struct ena_admin_rss_ind_table_entry);

 dma_free_coherent(ena_dev->dmadev, tbl_size, rss->rss_ind_tbl,
     rss->rss_ind_tbl_dma_addr);
 rss->rss_ind_tbl = ((void*)0);
mem_err1:
 rss->tbl_log_size = 0;
 return -ENOMEM;
}
