
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device_context {int l4_hash; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;


 int HV_TCP4_L4HASH ;
 int HV_TCP6_L4HASH ;
 int HV_UDP4_L4HASH ;
 int HV_UDP6_L4HASH ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;





__attribute__((used)) static int
netvsc_get_rss_hash_opts(struct net_device_context *ndc,
    struct ethtool_rxnfc *info)
{
 const u32 l4_flag = RXH_L4_B_0_1 | RXH_L4_B_2_3;

 info->data = RXH_IP_SRC | RXH_IP_DST;

 switch (info->flow_type) {
 case 131:
  if (ndc->l4_hash & HV_TCP4_L4HASH)
   info->data |= l4_flag;

  break;

 case 130:
  if (ndc->l4_hash & HV_TCP6_L4HASH)
   info->data |= l4_flag;

  break;

 case 129:
  if (ndc->l4_hash & HV_UDP4_L4HASH)
   info->data |= l4_flag;

  break;

 case 128:
  if (ndc->l4_hash & HV_UDP6_L4HASH)
   info->data |= l4_flag;

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
