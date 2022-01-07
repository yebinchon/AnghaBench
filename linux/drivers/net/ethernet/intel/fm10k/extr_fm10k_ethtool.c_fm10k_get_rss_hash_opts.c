
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int flags; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;






 int EINVAL ;


 int FM10K_FLAG_RSS_FIELD_IPV4_UDP ;
 int FM10K_FLAG_RSS_FIELD_IPV6_UDP ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 int test_bit (int ,int ) ;

__attribute__((used)) static int fm10k_get_rss_hash_opts(struct fm10k_intfc *interface,
       struct ethtool_rxnfc *cmd)
{
 cmd->data = 0;


 switch (cmd->flow_type) {
 case 131:
 case 130:
  cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

 case 129:
  if (test_bit(FM10K_FLAG_RSS_FIELD_IPV4_UDP,
        interface->flags))
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

 case 133:
 case 132:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
  cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  break;
 case 128:
  if (test_bit(FM10K_FLAG_RSS_FIELD_IPV6_UDP,
        interface->flags))
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
  cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
