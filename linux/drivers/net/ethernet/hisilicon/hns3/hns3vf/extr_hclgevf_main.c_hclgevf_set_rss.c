
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hnae3_handle {TYPE_1__* pdev; } ;
struct hclgevf_rss_cfg {int * rss_indirection_tbl; int rss_hash_key; int hash_algo; } ;
struct hclgevf_dev {struct hclgevf_rss_cfg rss_cfg; } ;
struct TYPE_2__ {int revision; } ;


 int EINVAL ;



 int HCLGEVF_RSS_HASH_ALGO_SIMPLE ;
 int HCLGEVF_RSS_HASH_ALGO_TOEPLITZ ;
 int HCLGEVF_RSS_IND_TBL_SIZE ;
 int HCLGEVF_RSS_KEY_SIZE ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_set_rss_algo_key (struct hclgevf_dev*,int ,int const*) ;
 int hclgevf_set_rss_indir_table (struct hclgevf_dev*) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static int hclgevf_set_rss(struct hnae3_handle *handle, const u32 *indir,
      const u8 *key, const u8 hfunc)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 struct hclgevf_rss_cfg *rss_cfg = &hdev->rss_cfg;
 int ret, i;

 if (handle->pdev->revision >= 0x21) {

  if (key) {
   switch (hfunc) {
   case 129:
    rss_cfg->hash_algo =
     HCLGEVF_RSS_HASH_ALGO_TOEPLITZ;
    break;
   case 128:
    rss_cfg->hash_algo =
     HCLGEVF_RSS_HASH_ALGO_SIMPLE;
    break;
   case 130:
    break;
   default:
    return -EINVAL;
   }

   ret = hclgevf_set_rss_algo_key(hdev, rss_cfg->hash_algo,
             key);
   if (ret)
    return ret;


   memcpy(rss_cfg->rss_hash_key, key,
          HCLGEVF_RSS_KEY_SIZE);
  }
 }


 for (i = 0; i < HCLGEVF_RSS_IND_TBL_SIZE; i++)
  rss_cfg->rss_indirection_tbl[i] = indir[i];


 return hclgevf_set_rss_indir_table(hdev);
}
