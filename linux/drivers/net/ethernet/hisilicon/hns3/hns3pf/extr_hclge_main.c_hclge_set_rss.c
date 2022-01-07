
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {int rss_algo; int * rss_indirection_tbl; int rss_hash_key; struct hclge_dev* back; } ;
struct hclge_dev {int dummy; } ;


 int EINVAL ;



 int HCLGE_RSS_HASH_ALGO_SIMPLE ;
 int HCLGE_RSS_HASH_ALGO_TOEPLITZ ;
 int HCLGE_RSS_IND_TBL_SIZE ;
 int HCLGE_RSS_KEY_SIZE ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_set_rss_algo_key (struct hclge_dev*,int,int const*) ;
 int hclge_set_rss_indir_table (struct hclge_dev*,int *) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static int hclge_set_rss(struct hnae3_handle *handle, const u32 *indir,
    const u8 *key, const u8 hfunc)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 u8 hash_algo;
 int ret, i;


 if (key) {
  switch (hfunc) {
  case 129:
   hash_algo = HCLGE_RSS_HASH_ALGO_TOEPLITZ;
   break;
  case 128:
   hash_algo = HCLGE_RSS_HASH_ALGO_SIMPLE;
   break;
  case 130:
   hash_algo = vport->rss_algo;
   break;
  default:
   return -EINVAL;
  }

  ret = hclge_set_rss_algo_key(hdev, hash_algo, key);
  if (ret)
   return ret;


  memcpy(vport->rss_hash_key, key, HCLGE_RSS_KEY_SIZE);
  vport->rss_algo = hash_algo;
 }


 for (i = 0; i < HCLGE_RSS_IND_TBL_SIZE; i++)
  vport->rss_indirection_tbl[i] = indir[i];


 return hclge_set_rss_indir_table(hdev, vport->rss_indirection_tbl);
}
