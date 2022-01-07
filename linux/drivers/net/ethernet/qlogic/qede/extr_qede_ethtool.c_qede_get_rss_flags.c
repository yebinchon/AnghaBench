
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int rss_caps; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;




 int QED_RSS_IPV4_UDP ;
 int QED_RSS_IPV6_UDP ;
 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;





__attribute__((used)) static int qede_get_rss_flags(struct qede_dev *edev, struct ethtool_rxnfc *info)
{
 info->data = RXH_IP_SRC | RXH_IP_DST;

 switch (info->flow_type) {
 case 131:
 case 130:
  info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 129:
  if (edev->rss_caps & QED_RSS_IPV4_UDP)
   info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 128:
  if (edev->rss_caps & QED_RSS_IPV6_UDP)
   info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  break;
 case 133:
 case 132:
  break;
 default:
  info->data = 0;
  break;
 }

 return 0;
}
