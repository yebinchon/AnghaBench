
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {int rss_algo; int * rss_indirection_tbl; int rss_hash_key; } ;


 int ETH_RSS_HASH_TOP ;
 int ETH_RSS_HASH_UNKNOWN ;
 int ETH_RSS_HASH_XOR ;


 int HCLGE_RSS_IND_TBL_SIZE ;
 int HCLGE_RSS_KEY_SIZE ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int hclge_get_rss(struct hnae3_handle *handle, u32 *indir,
    u8 *key, u8 *hfunc)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 int i;


 if (hfunc) {
  switch (vport->rss_algo) {
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
  memcpy(key, vport->rss_hash_key, HCLGE_RSS_KEY_SIZE);


 if (indir)
  for (i = 0; i < HCLGE_RSS_IND_TBL_SIZE; i++)
   indir[i] = vport->rss_indirection_tbl[i];

 return 0;
}
