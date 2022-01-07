
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hns_ppe_cb {int rss_indir_table; int rss_key; } ;
struct hnae_handle {int dummy; } ;


 int HNS_PPEV2_RSS_IND_TBL_SIZE ;
 int HNS_PPEV2_RSS_KEY_SIZE ;
 struct hns_ppe_cb* hns_get_ppe_cb (struct hnae_handle*) ;
 int hns_ppe_set_indir_table (struct hns_ppe_cb*,int ) ;
 int hns_ppe_set_rss_key (struct hns_ppe_cb*,int ) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int hns_ae_set_rss(struct hnae_handle *handle, const u32 *indir,
     const u8 *key, const u8 hfunc)
{
 struct hns_ppe_cb *ppe_cb = hns_get_ppe_cb(handle);


 if (key) {
  memcpy(ppe_cb->rss_key, key, HNS_PPEV2_RSS_KEY_SIZE);
  hns_ppe_set_rss_key(ppe_cb, ppe_cb->rss_key);
 }

 if (indir) {

  memcpy(ppe_cb->rss_indir_table, indir,
         HNS_PPEV2_RSS_IND_TBL_SIZE * sizeof(*indir));


  hns_ppe_set_indir_table(ppe_cb, ppe_cb->rss_indir_table);
 }

 return 0;
}
