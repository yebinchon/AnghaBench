
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_8__ {void* ipv6_fragment_en; void* ipv6_sctp_en; void* ipv6_udp_en; void* ipv6_tcp_en; void* ipv4_fragment_en; void* ipv4_sctp_en; void* ipv4_udp_en; void* ipv4_tcp_en; } ;
struct hclgevf_rss_cfg {size_t rss_size; size_t* rss_indirection_tbl; TYPE_4__ rss_tuple_sets; int rss_hash_key; int hash_algo; } ;
struct TYPE_5__ {size_t rss_size; } ;
struct TYPE_6__ {TYPE_1__ kinfo; } ;
struct hclgevf_dev {TYPE_3__* pdev; TYPE_2__ nic; struct hclgevf_rss_cfg rss_cfg; } ;
struct TYPE_7__ {int revision; } ;


 int HCLGEVF_RSS_HASH_ALGO_SIMPLE ;
 size_t HCLGEVF_RSS_IND_TBL_SIZE ;
 void* HCLGEVF_RSS_INPUT_TUPLE_OTHER ;
 void* HCLGEVF_RSS_INPUT_TUPLE_SCTP ;
 int HCLGEVF_RSS_KEY_SIZE ;
 int hclgevf_hash_key ;
 int hclgevf_set_rss_algo_key (struct hclgevf_dev*,int ,int ) ;
 int hclgevf_set_rss_indir_table (struct hclgevf_dev*) ;
 int hclgevf_set_rss_input_tuple (struct hclgevf_dev*,struct hclgevf_rss_cfg*) ;
 int hclgevf_set_rss_tc_mode (struct hclgevf_dev*,size_t) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int hclgevf_rss_init_hw(struct hclgevf_dev *hdev)
{
 struct hclgevf_rss_cfg *rss_cfg = &hdev->rss_cfg;
 int ret;
 u32 i;

 rss_cfg->rss_size = hdev->nic.kinfo.rss_size;

 if (hdev->pdev->revision >= 0x21) {
  rss_cfg->hash_algo = HCLGEVF_RSS_HASH_ALGO_SIMPLE;
  memcpy(rss_cfg->rss_hash_key, hclgevf_hash_key,
         HCLGEVF_RSS_KEY_SIZE);

  ret = hclgevf_set_rss_algo_key(hdev, rss_cfg->hash_algo,
            rss_cfg->rss_hash_key);
  if (ret)
   return ret;

  rss_cfg->rss_tuple_sets.ipv4_tcp_en =
     HCLGEVF_RSS_INPUT_TUPLE_OTHER;
  rss_cfg->rss_tuple_sets.ipv4_udp_en =
     HCLGEVF_RSS_INPUT_TUPLE_OTHER;
  rss_cfg->rss_tuple_sets.ipv4_sctp_en =
     HCLGEVF_RSS_INPUT_TUPLE_SCTP;
  rss_cfg->rss_tuple_sets.ipv4_fragment_en =
     HCLGEVF_RSS_INPUT_TUPLE_OTHER;
  rss_cfg->rss_tuple_sets.ipv6_tcp_en =
     HCLGEVF_RSS_INPUT_TUPLE_OTHER;
  rss_cfg->rss_tuple_sets.ipv6_udp_en =
     HCLGEVF_RSS_INPUT_TUPLE_OTHER;
  rss_cfg->rss_tuple_sets.ipv6_sctp_en =
     HCLGEVF_RSS_INPUT_TUPLE_SCTP;
  rss_cfg->rss_tuple_sets.ipv6_fragment_en =
     HCLGEVF_RSS_INPUT_TUPLE_OTHER;

  ret = hclgevf_set_rss_input_tuple(hdev, rss_cfg);
  if (ret)
   return ret;

 }


 for (i = 0; i < HCLGEVF_RSS_IND_TBL_SIZE; i++)
  rss_cfg->rss_indirection_tbl[i] = i % rss_cfg->rss_size;

 ret = hclgevf_set_rss_indir_table(hdev);
 if (ret)
  return ret;

 return hclgevf_set_rss_tc_mode(hdev, rss_cfg->rss_size);
}
