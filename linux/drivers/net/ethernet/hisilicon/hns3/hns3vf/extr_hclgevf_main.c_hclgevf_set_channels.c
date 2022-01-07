
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct hnae3_knic_private_info {unsigned int rss_size; unsigned int num_tqps; int num_tc; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;
struct hclgevf_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int HCLGEVF_RSS_IND_TBL_SIZE ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,unsigned int,unsigned int,unsigned int,int) ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_set_rss (struct hnae3_handle*,unsigned int*,int *,int ) ;
 int hclgevf_set_rss_tc_mode (struct hclgevf_dev*,unsigned int) ;
 int hclgevf_update_rss_size (struct hnae3_handle*,unsigned int) ;
 unsigned int* kcalloc (unsigned int,int,int ) ;
 int kfree (unsigned int*) ;

__attribute__((used)) static int hclgevf_set_channels(struct hnae3_handle *handle, u32 new_tqps_num,
    bool rxfh_configured)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 struct hnae3_knic_private_info *kinfo = &handle->kinfo;
 u16 cur_rss_size = kinfo->rss_size;
 u16 cur_tqps = kinfo->num_tqps;
 u32 *rss_indir;
 unsigned int i;
 int ret;

 hclgevf_update_rss_size(handle, new_tqps_num);

 ret = hclgevf_set_rss_tc_mode(hdev, kinfo->rss_size);
 if (ret)
  return ret;


 if (rxfh_configured)
  goto out;


 rss_indir = kcalloc(HCLGEVF_RSS_IND_TBL_SIZE, sizeof(u32), GFP_KERNEL);
 if (!rss_indir)
  return -ENOMEM;

 for (i = 0; i < HCLGEVF_RSS_IND_TBL_SIZE; i++)
  rss_indir[i] = i % kinfo->rss_size;

 ret = hclgevf_set_rss(handle, rss_indir, ((void*)0), 0);
 if (ret)
  dev_err(&hdev->pdev->dev, "set rss indir table fail, ret=%d\n",
   ret);

 kfree(rss_indir);

out:
 if (!ret)
  dev_info(&hdev->pdev->dev,
    "Channels changed, rss_size from %u to %u, tqps from %u to %u",
    cur_rss_size, kinfo->rss_size,
    cur_tqps, kinfo->rss_size * kinfo->num_tc);

 return ret;
}
