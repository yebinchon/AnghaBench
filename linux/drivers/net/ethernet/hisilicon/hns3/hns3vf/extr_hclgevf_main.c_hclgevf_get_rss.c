
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hnae3_handle {TYPE_1__* pdev; } ;
struct hclgevf_rss_cfg {int hash_algo; int * rss_indirection_tbl; int rss_hash_key; } ;
struct hclgevf_dev {struct hclgevf_rss_cfg rss_cfg; } ;
struct TYPE_2__ {int revision; } ;


 int ETH_RSS_HASH_TOP ;
 int ETH_RSS_HASH_UNKNOWN ;
 int ETH_RSS_HASH_XOR ;


 int HCLGEVF_RSS_IND_TBL_SIZE ;
 int HCLGEVF_RSS_KEY_SIZE ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_get_rss_hash_key (struct hclgevf_dev*) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int hclgevf_get_rss(struct hnae3_handle *handle, u32 *indir, u8 *key,
      u8 *hfunc)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 struct hclgevf_rss_cfg *rss_cfg = &hdev->rss_cfg;
 int i, ret;

 if (handle->pdev->revision >= 0x21) {

  if (hfunc) {
   switch (rss_cfg->hash_algo) {
   case 128:
    *hfunc = ETH_RSS_HASH_TOP;
    break;
   case 129:
    *hfunc = ETH_RSS_HASH_XOR;
    break;
   default:
    *hfunc = ETH_RSS_HASH_UNKNOWN;
    break;
   }
  }


  if (key)
   memcpy(key, rss_cfg->rss_hash_key,
          HCLGEVF_RSS_KEY_SIZE);
 } else {
  if (hfunc)
   *hfunc = ETH_RSS_HASH_TOP;
  if (key) {
   ret = hclgevf_get_rss_hash_key(hdev);
   if (ret)
    return ret;
   memcpy(key, rss_cfg->rss_hash_key,
          HCLGEVF_RSS_KEY_SIZE);
  }
 }

 if (indir)
  for (i = 0; i < HCLGEVF_RSS_IND_TBL_SIZE; i++)
   indir[i] = rss_cfg->rss_indirection_tbl[i];

 return 0;
}
