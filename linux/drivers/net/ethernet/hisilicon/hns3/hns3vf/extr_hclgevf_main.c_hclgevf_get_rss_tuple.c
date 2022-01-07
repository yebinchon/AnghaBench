
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hnae3_handle {TYPE_1__* pdev; } ;
struct TYPE_4__ {int ipv4_tcp_en; int ipv4_udp_en; int ipv6_tcp_en; int ipv6_udp_en; int ipv4_sctp_en; int ipv6_sctp_en; } ;
struct hclgevf_rss_cfg {TYPE_2__ rss_tuple_sets; } ;
struct hclgevf_dev {struct hclgevf_rss_cfg rss_cfg; } ;
struct ethtool_rxnfc {int flow_type; int data; } ;
struct TYPE_3__ {int revision; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int HCLGEVF_D_IP_BIT ;
 int HCLGEVF_D_PORT_BIT ;
 int HCLGEVF_S_IP_BIT ;
 int HCLGEVF_S_PORT_BIT ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;

__attribute__((used)) static int hclgevf_get_rss_tuple(struct hnae3_handle *handle,
     struct ethtool_rxnfc *nfc)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);
 struct hclgevf_rss_cfg *rss_cfg = &hdev->rss_cfg;
 u8 tuple_sets;

 if (handle->pdev->revision == 0x20)
  return -EOPNOTSUPP;

 nfc->data = 0;

 switch (nfc->flow_type) {
 case 131:
  tuple_sets = rss_cfg->rss_tuple_sets.ipv4_tcp_en;
  break;
 case 129:
  tuple_sets = rss_cfg->rss_tuple_sets.ipv4_udp_en;
  break;
 case 130:
  tuple_sets = rss_cfg->rss_tuple_sets.ipv6_tcp_en;
  break;
 case 128:
  tuple_sets = rss_cfg->rss_tuple_sets.ipv6_udp_en;
  break;
 case 133:
  tuple_sets = rss_cfg->rss_tuple_sets.ipv4_sctp_en;
  break;
 case 132:
  tuple_sets = rss_cfg->rss_tuple_sets.ipv6_sctp_en;
  break;
 case 135:
 case 134:
  tuple_sets = HCLGEVF_S_IP_BIT | HCLGEVF_D_IP_BIT;
  break;
 default:
  return -EINVAL;
 }

 if (!tuple_sets)
  return 0;

 if (tuple_sets & HCLGEVF_D_PORT_BIT)
  nfc->data |= RXH_L4_B_2_3;
 if (tuple_sets & HCLGEVF_S_PORT_BIT)
  nfc->data |= RXH_L4_B_0_1;
 if (tuple_sets & HCLGEVF_D_IP_BIT)
  nfc->data |= RXH_IP_DST;
 if (tuple_sets & HCLGEVF_S_IP_BIT)
  nfc->data |= RXH_IP_SRC;

 return 0;
}
