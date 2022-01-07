
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hns_ppe_cb {int rss_indir_table; int rss_key; } ;
struct hnae_handle {int dummy; } ;


 int ETH_RSS_HASH_TOP ;
 int HNS_PPEV2_RSS_IND_TBL_SIZE ;
 int HNS_PPEV2_RSS_KEY_SIZE ;
 struct hns_ppe_cb* hns_get_ppe_cb (struct hnae_handle*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int hns_ae_get_rss(struct hnae_handle *handle, u32 *indir, u8 *key,
     u8 *hfunc)
{
 struct hns_ppe_cb *ppe_cb = hns_get_ppe_cb(handle);


 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;


 if (key)
  memcpy(key, ppe_cb->rss_key, HNS_PPEV2_RSS_KEY_SIZE);


 if (indir)
  memcpy(indir, ppe_cb->rss_indir_table,
         HNS_PPEV2_RSS_IND_TBL_SIZE * sizeof(*indir));

 return 0;
}
