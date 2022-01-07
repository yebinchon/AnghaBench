
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct hnae3_handle {int dummy; } ;
struct TYPE_4__ {void* ipv6_fragment_en; void* ipv6_sctp_en; void* ipv6_udp_en; void* ipv6_tcp_en; void* ipv4_fragment_en; void* ipv4_sctp_en; void* ipv4_udp_en; void* ipv4_tcp_en; } ;
struct hclge_vport {TYPE_2__ rss_tuple_sets; struct hclge_dev* back; } ;
struct hclge_rss_input_tuple_cmd {void* ipv6_fragment_en; void* ipv6_sctp_en; void* ipv6_udp_en; void* ipv6_tcp_en; void* ipv4_fragment_en; void* ipv4_sctp_en; void* ipv4_udp_en; void* ipv4_tcp_en; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int HCLGE_OPC_RSS_INPUT_TUPLE ;
 void* HCLGE_RSS_INPUT_TUPLE_OTHER ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 void* hclge_get_rss_hash_bits (struct ethtool_rxnfc*) ;
 int hclge_get_rss_type (struct hclge_vport*) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static int hclge_set_rss_tuple(struct hnae3_handle *handle,
          struct ethtool_rxnfc *nfc)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 struct hclge_rss_input_tuple_cmd *req;
 struct hclge_desc desc;
 u8 tuple_sets;
 int ret;

 if (nfc->data & ~(RXH_IP_SRC | RXH_IP_DST |
     RXH_L4_B_0_1 | RXH_L4_B_2_3))
  return -EINVAL;

 req = (struct hclge_rss_input_tuple_cmd *)desc.data;
 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_RSS_INPUT_TUPLE, 0);

 req->ipv4_tcp_en = vport->rss_tuple_sets.ipv4_tcp_en;
 req->ipv4_udp_en = vport->rss_tuple_sets.ipv4_udp_en;
 req->ipv4_sctp_en = vport->rss_tuple_sets.ipv4_sctp_en;
 req->ipv4_fragment_en = vport->rss_tuple_sets.ipv4_fragment_en;
 req->ipv6_tcp_en = vport->rss_tuple_sets.ipv6_tcp_en;
 req->ipv6_udp_en = vport->rss_tuple_sets.ipv6_udp_en;
 req->ipv6_sctp_en = vport->rss_tuple_sets.ipv6_sctp_en;
 req->ipv6_fragment_en = vport->rss_tuple_sets.ipv6_fragment_en;

 tuple_sets = hclge_get_rss_hash_bits(nfc);
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
  req->ipv4_fragment_en = HCLGE_RSS_INPUT_TUPLE_OTHER;
  break;
 case 134:
  req->ipv6_fragment_en = HCLGE_RSS_INPUT_TUPLE_OTHER;
  break;
 default:
  return -EINVAL;
 }

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "Set rss tuple fail, status = %d\n", ret);
  return ret;
 }

 vport->rss_tuple_sets.ipv4_tcp_en = req->ipv4_tcp_en;
 vport->rss_tuple_sets.ipv4_udp_en = req->ipv4_udp_en;
 vport->rss_tuple_sets.ipv4_sctp_en = req->ipv4_sctp_en;
 vport->rss_tuple_sets.ipv4_fragment_en = req->ipv4_fragment_en;
 vport->rss_tuple_sets.ipv6_tcp_en = req->ipv6_tcp_en;
 vport->rss_tuple_sets.ipv6_udp_en = req->ipv6_udp_en;
 vport->rss_tuple_sets.ipv6_sctp_en = req->ipv6_sctp_en;
 vport->rss_tuple_sets.ipv6_fragment_en = req->ipv6_fragment_en;
 hclge_get_rss_type(vport);
 return 0;
}
