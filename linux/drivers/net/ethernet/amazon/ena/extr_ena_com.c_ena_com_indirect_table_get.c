
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u32 ;
struct ena_rss {unsigned long long tbl_log_size; unsigned long long* host_rss_ind_tbl; int rss_ind_tbl_dma_addr; } ;
struct ena_com_dev {struct ena_rss rss; } ;
struct ena_admin_rss_ind_table_entry {int dummy; } ;
struct ena_admin_get_feat_resp {int dummy; } ;


 int ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG ;
 int ena_com_get_feature_ex (struct ena_com_dev*,struct ena_admin_get_feat_resp*,int ,int ,unsigned long long,int ) ;
 int ena_com_ind_tbl_convert_from_device (struct ena_com_dev*) ;
 scalar_t__ unlikely (int) ;

int ena_com_indirect_table_get(struct ena_com_dev *ena_dev, u32 *ind_tbl)
{
 struct ena_rss *rss = &ena_dev->rss;
 struct ena_admin_get_feat_resp get_resp;
 u32 tbl_size;
 int i, rc;

 tbl_size = (1ULL << rss->tbl_log_size) *
  sizeof(struct ena_admin_rss_ind_table_entry);

 rc = ena_com_get_feature_ex(ena_dev, &get_resp,
        ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG,
        rss->rss_ind_tbl_dma_addr,
        tbl_size, 0);
 if (unlikely(rc))
  return rc;

 if (!ind_tbl)
  return 0;

 rc = ena_com_ind_tbl_convert_from_device(ena_dev);
 if (unlikely(rc))
  return rc;

 for (i = 0; i < (1 << rss->tbl_log_size); i++)
  ind_tbl[i] = rss->host_rss_ind_tbl[i];

 return 0;
}
