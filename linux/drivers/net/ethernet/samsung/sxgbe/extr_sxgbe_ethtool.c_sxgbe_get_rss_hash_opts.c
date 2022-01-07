
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_priv_data {int dummy; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;






 int EINVAL ;




 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;







__attribute__((used)) static int sxgbe_get_rss_hash_opts(struct sxgbe_priv_data *priv,
       struct ethtool_rxnfc *cmd)
{
 cmd->data = 0;


 switch (cmd->flow_type) {
 case 131:
 case 129:
  cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

 case 133:
 case 141:
 case 139:
 case 137:
 case 135:
  cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  break;
 case 130:
 case 128:
  cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

 case 132:
 case 140:
 case 138:
 case 136:
 case 134:
  cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
