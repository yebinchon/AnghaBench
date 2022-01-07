
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sxgbe_priv_data {scalar_t__ ioaddr; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;






 int EINVAL ;




 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;


 int SXGBE_CORE_RSS_CTL_IP2TE ;
 scalar_t__ SXGBE_CORE_RSS_CTL_REG ;
 int SXGBE_CORE_RSS_CTL_TCP4TE ;
 int SXGBE_CORE_RSS_CTL_UDP4TE ;




 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sxgbe_set_rss_hash_opt(struct sxgbe_priv_data *priv,
      struct ethtool_rxnfc *cmd)
{
 u32 reg_val = 0;




 if (cmd->data & ~(RXH_IP_SRC | RXH_IP_DST |
     RXH_L4_B_0_1 | RXH_L4_B_2_3))
  return -EINVAL;

 switch (cmd->flow_type) {
 case 131:
 case 130:
  if (!(cmd->data & RXH_IP_SRC) ||
      !(cmd->data & RXH_IP_DST) ||
      !(cmd->data & RXH_L4_B_0_1) ||
      !(cmd->data & RXH_L4_B_2_3))
   return -EINVAL;
  reg_val = SXGBE_CORE_RSS_CTL_TCP4TE;
  break;
 case 129:
 case 128:
  if (!(cmd->data & RXH_IP_SRC) ||
      !(cmd->data & RXH_IP_DST) ||
      !(cmd->data & RXH_L4_B_0_1) ||
      !(cmd->data & RXH_L4_B_2_3))
   return -EINVAL;
  reg_val = SXGBE_CORE_RSS_CTL_UDP4TE;
  break;
 case 133:
 case 141:
 case 139:
 case 137:
 case 140:
 case 138:
 case 136:
 case 132:
 case 135:
 case 134:
  if (!(cmd->data & RXH_IP_SRC) ||
      !(cmd->data & RXH_IP_DST) ||
      (cmd->data & RXH_L4_B_0_1) ||
      (cmd->data & RXH_L4_B_2_3))
   return -EINVAL;
  reg_val = SXGBE_CORE_RSS_CTL_IP2TE;
  break;
 default:
  return -EINVAL;
 }


 reg_val |= readl(priv->ioaddr + SXGBE_CORE_RSS_CTL_REG);
 writel(reg_val, priv->ioaddr + SXGBE_CORE_RSS_CTL_REG);
 readl(priv->ioaddr + SXGBE_CORE_RSS_CTL_REG);

 return 0;
}
