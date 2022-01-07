
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;
struct dpaa_priv {int keygen_in_use; } ;
 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;






 struct dpaa_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dpaa_get_hash_opts(struct net_device *dev,
         struct ethtool_rxnfc *cmd)
{
 struct dpaa_priv *priv = netdev_priv(dev);

 cmd->data = 0;

 switch (cmd->flow_type) {
 case 131:
 case 130:
 case 129:
 case 128:
  if (priv->keygen_in_use)
   cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

 case 135:
 case 134:
 case 133:
 case 132:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
  if (priv->keygen_in_use)
   cmd->data |= RXH_IP_SRC | RXH_IP_DST;
  break;
 default:
  cmd->data = 0;
  break;
 }

 return 0;
}
