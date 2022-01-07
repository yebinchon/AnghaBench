
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; int flow_type; } ;


 int EOPNOTSUPP ;




 int LAN743X_USED_RX_CHANNELS ;
 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;





__attribute__((used)) static int lan743x_ethtool_get_rxnfc(struct net_device *netdev,
         struct ethtool_rxnfc *rxnfc,
         u32 *rule_locs)
{
 switch (rxnfc->cmd) {
 case 135:
  rxnfc->data = 0;
  switch (rxnfc->flow_type) {
  case 131:case 129:
  case 130:case 128:
   rxnfc->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

  case 133: case 132:
   rxnfc->data |= RXH_IP_SRC | RXH_IP_DST;
   return 0;
  }
  break;
 case 134:
  rxnfc->data = LAN743X_USED_RX_CHANNELS;
  return 0;
 }
 return -EOPNOTSUPP;
}
