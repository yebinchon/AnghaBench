
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* ipv6_fragment_en; void* ipv6_sctp_en; void* ipv6_udp_en; void* ipv6_tcp_en; void* ipv4_fragment_en; void* ipv4_sctp_en; void* ipv4_udp_en; void* ipv4_tcp_en; } ;
struct hclge_vport {int rss_algo; int rss_hash_key; TYPE_2__ rss_tuple_sets; } ;
struct hclge_dev {int num_vmdq_vport; TYPE_1__* pdev; struct hclge_vport* vport; } ;
struct TYPE_3__ {int revision; } ;


 int HCLGE_RSS_HASH_ALGO_SIMPLE ;
 int HCLGE_RSS_HASH_ALGO_TOEPLITZ ;
 void* HCLGE_RSS_INPUT_TUPLE_OTHER ;
 void* HCLGE_RSS_INPUT_TUPLE_SCTP ;
 int HCLGE_RSS_KEY_SIZE ;
 int hclge_hash_key ;
 int hclge_rss_indir_init_cfg (struct hclge_dev*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void hclge_rss_init_cfg(struct hclge_dev *hdev)
{
 int i, rss_algo = HCLGE_RSS_HASH_ALGO_TOEPLITZ;
 struct hclge_vport *vport = hdev->vport;

 if (hdev->pdev->revision >= 0x21)
  rss_algo = HCLGE_RSS_HASH_ALGO_SIMPLE;

 for (i = 0; i < hdev->num_vmdq_vport + 1; i++) {
  vport[i].rss_tuple_sets.ipv4_tcp_en =
   HCLGE_RSS_INPUT_TUPLE_OTHER;
  vport[i].rss_tuple_sets.ipv4_udp_en =
   HCLGE_RSS_INPUT_TUPLE_OTHER;
  vport[i].rss_tuple_sets.ipv4_sctp_en =
   HCLGE_RSS_INPUT_TUPLE_SCTP;
  vport[i].rss_tuple_sets.ipv4_fragment_en =
   HCLGE_RSS_INPUT_TUPLE_OTHER;
  vport[i].rss_tuple_sets.ipv6_tcp_en =
   HCLGE_RSS_INPUT_TUPLE_OTHER;
  vport[i].rss_tuple_sets.ipv6_udp_en =
   HCLGE_RSS_INPUT_TUPLE_OTHER;
  vport[i].rss_tuple_sets.ipv6_sctp_en =
   HCLGE_RSS_INPUT_TUPLE_SCTP;
  vport[i].rss_tuple_sets.ipv6_fragment_en =
   HCLGE_RSS_INPUT_TUPLE_OTHER;

  vport[i].rss_algo = rss_algo;

  memcpy(vport[i].rss_hash_key, hclge_hash_key,
         HCLGE_RSS_KEY_SIZE);
 }

 hclge_rss_indir_init_cfg(hdev);
}
