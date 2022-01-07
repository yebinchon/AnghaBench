
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int dummy; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;


 int EINVAL ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;







__attribute__((used)) static int nicvf_get_rss_hash_opts(struct nicvf *nic,
       struct ethtool_rxnfc *info)
{
 info->data = 0;

 switch (info->flow_type) {
 case 131:
 case 130:
 case 129:
 case 128:
 case 133:
 case 132:
  info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

 case 135:
 case 134:
  info->data |= RXH_IP_SRC | RXH_IP_DST;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
