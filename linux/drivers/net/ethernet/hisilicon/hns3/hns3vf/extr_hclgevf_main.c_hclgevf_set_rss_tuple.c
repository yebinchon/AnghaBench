
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct hnae3_handle {TYPE_1__* pdev; } ;
struct hclgevf_rss_input_tuple_cmd {void* ipv6_fragment_en; void* ipv6_sctp_en; void* ipv6_udp_en; void* ipv6_tcp_en; void* ipv4_fragment_en; void* ipv4_sctp_en; void* ipv4_udp_en; void* ipv4_tcp_en; } ;
struct TYPE_6__ {void* ipv6_fragment_en; void* ipv6_sctp_en; void* ipv6_udp_en; void* ipv6_tcp_en; void* ipv4_fragment_en; void* ipv4_sctp_en; void* ipv4_udp_en; void* ipv4_tcp_en; } ;
struct hclgevf_rss_cfg {TYPE_3__ rss_tuple_sets; } ;
struct hclgevf_dev {TYPE_2__* pdev; int hw; struct hclgevf_rss_cfg rss_cfg; } ;
struct hclgevf_desc {scalar_t__ data; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int revision; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int HCLGEVF_OPC_RSS_INPUT_TUPLE ;
 void* HCLGEVF_RSS_INPUT_TUPLE_OTHER ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 int dev_err (int *,char*,int) ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;
 int hclgevf_cmd_send (int *,struct hclgevf_desc*,int) ;
 int hclgevf_cmd_setup_basic_desc (struct hclgevf_desc*,int ,int) ;
 void* hclgevf_get_rss_hash_bits (struct ethtool_rxnfc*) ;

__attribute__((used)) static int hclgevf_set_rss_tuple(struct hnae3_handle *handle,
     struct ethtool_rxnfc *nfc)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 struct hclgevf_rss_cfg *rss_cfg = &hdev->rss_cfg;
 struct hclgevf_rss_input_tuple_cmd *req;
 struct hclgevf_desc desc;
 u8 tuple_sets;
 int ret;

 if (handle->pdev->revision == 0x20)
  return -EOPNOTSUPP;

 if (nfc->data &
     ~(RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 | RXH_L4_B_2_3))
  return -EINVAL;

 req = (struct hclgevf_rss_input_tuple_cmd *)desc.data;
 hclgevf_cmd_setup_basic_desc(&desc, HCLGEVF_OPC_RSS_INPUT_TUPLE, 0);

 req->ipv4_tcp_en = rss_cfg->rss_tuple_sets.ipv4_tcp_en;
 req->ipv4_udp_en = rss_cfg->rss_tuple_sets.ipv4_udp_en;
 req->ipv4_sctp_en = rss_cfg->rss_tuple_sets.ipv4_sctp_en;
 req->ipv4_fragment_en = rss_cfg->rss_tuple_sets.ipv4_fragment_en;
 req->ipv6_tcp_en = rss_cfg->rss_tuple_sets.ipv6_tcp_en;
 req->ipv6_udp_en = rss_cfg->rss_tuple_sets.ipv6_udp_en;
 req->ipv6_sctp_en = rss_cfg->rss_tuple_sets.ipv6_sctp_en;
 req->ipv6_fragment_en = rss_cfg->rss_tuple_sets.ipv6_fragment_en;

 tuple_sets = hclgevf_get_rss_hash_bits(nfc);
 switch (nfc->flow_type) {
 case 131:
  req->ipv4_tcp_en = tuple_sets;
  break;
 case 130:
  req->ipv6_tcp_en = tuple_sets;
  break;
 case 129:
  req->ipv4_udp_en = tuple_sets;
  break;
 case 128:
  req->ipv6_udp_en = tuple_sets;
  break;
 case 133:
  req->ipv4_sctp_en = tuple_sets;
  break;
 case 132:
  if ((nfc->data & RXH_L4_B_0_1) ||
      (nfc->data & RXH_L4_B_2_3))
   return -EINVAL;

  req->ipv6_sctp_en = tuple_sets;
  break;
 case 135:
  req->ipv4_fragment_en = HCLGEVF_RSS_INPUT_TUPLE_OTHER;
  break;
 case 134:
  req->ipv6_fragment_en = HCLGEVF_RSS_INPUT_TUPLE_OTHER;
  break;
 default:
  return -EINVAL;
 }

 ret = hclgevf_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Set rss tuple fail, status = %d\n", ret);
  return ret;
 }

 rss_cfg->rss_tuple_sets.ipv4_tcp_en = req->ipv4_tcp_en;
 rss_cfg->rss_tuple_sets.ipv4_udp_en = req->ipv4_udp_en;
 rss_cfg->rss_tuple_sets.ipv4_sctp_en = req->ipv4_sctp_en;
 rss_cfg->rss_tuple_sets.ipv4_fragment_en = req->ipv4_fragment_en;
 rss_cfg->rss_tuple_sets.ipv6_tcp_en = req->ipv6_tcp_en;
 rss_cfg->rss_tuple_sets.ipv6_udp_en = req->ipv6_udp_en;
 rss_cfg->rss_tuple_sets.ipv6_sctp_en = req->ipv6_sctp_en;
 rss_cfg->rss_tuple_sets.ipv6_fragment_en = req->ipv6_fragment_en;
 return 0;
}
