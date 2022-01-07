
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hnae3_handle {int dummy; } ;
struct TYPE_2__ {int ipv4_tcp_en; int ipv4_udp_en; int ipv6_tcp_en; int ipv6_udp_en; int ipv4_sctp_en; int ipv6_sctp_en; } ;
struct hclge_vport {TYPE_1__ rss_tuple_sets; } ;
struct ethtool_rxnfc {int flow_type; int data; } ;


 int EINVAL ;
 int HCLGE_D_IP_BIT ;
 int HCLGE_D_PORT_BIT ;
 int HCLGE_S_IP_BIT ;
 int HCLGE_S_PORT_BIT ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static int hclge_get_rss_tuple(struct hnae3_handle *handle,
          struct ethtool_rxnfc *nfc)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 u8 tuple_sets;

 nfc->data = 0;

 switch (nfc->flow_type) {
 case 131:
  tuple_sets = vport->rss_tuple_sets.ipv4_tcp_en;
  break;
 case 129:
  tuple_sets = vport->rss_tuple_sets.ipv4_udp_en;
  break;
 case 130:
  tuple_sets = vport->rss_tuple_sets.ipv6_tcp_en;
  break;
 case 128:
  tuple_sets = vport->rss_tuple_sets.ipv6_udp_en;
  break;
 case 133:
  tuple_sets = vport->rss_tuple_sets.ipv4_sctp_en;
  break;
 case 132:
  tuple_sets = vport->rss_tuple_sets.ipv6_sctp_en;
  break;
 case 135:
 case 134:
  tuple_sets = HCLGE_S_IP_BIT | HCLGE_D_IP_BIT;
  break;
 default:
  return -EINVAL;
 }

 if (!tuple_sets)
  return 0;

 if (tuple_sets & HCLGE_D_PORT_BIT)
  nfc->data |= RXH_L4_B_2_3;
 if (tuple_sets & HCLGE_S_PORT_BIT)
  nfc->data |= RXH_L4_B_0_1;
 if (tuple_sets & HCLGE_D_IP_BIT)
  nfc->data |= RXH_IP_DST;
 if (tuple_sets & HCLGE_S_IP_BIT)
  nfc->data |= RXH_IP_SRC;

 return 0;
}
