
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {short len; scalar_t__ data; } ;
struct nps_enet_priv {scalar_t__ regs_base; } ;
struct net_device {int dummy; } ;


 scalar_t__ DIV_ROUND_UP (short,int) ;
 int IS_ALIGNED (unsigned long,int) ;
 scalar_t__ NPS_ENET_ENABLE ;
 scalar_t__ NPS_ENET_REG_TX_BUF ;
 scalar_t__ NPS_ENET_REG_TX_CTL ;
 scalar_t__ TX_CTL_CT_SHIFT ;
 short TX_CTL_NT_SHIFT ;
 scalar_t__ get_unaligned_be32 (scalar_t__*) ;
 int iowrite32_rep (scalar_t__,scalar_t__*,scalar_t__) ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int nps_enet_reg_set (struct nps_enet_priv*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void nps_enet_send_frame(struct net_device *ndev,
    struct sk_buff *skb)
{
 struct nps_enet_priv *priv = netdev_priv(ndev);
 u32 tx_ctrl_value = 0;
 short length = skb->len;
 u32 i, len = DIV_ROUND_UP(length, sizeof(u32));
 u32 *src = (void *)skb->data;
 bool src_is_aligned = IS_ALIGNED((unsigned long)src, sizeof(u32));


 if (src_is_aligned)
  iowrite32_rep(priv->regs_base + NPS_ENET_REG_TX_BUF, src, len);
 else
  for (i = 0; i < len; i++, src++)
   nps_enet_reg_set(priv, NPS_ENET_REG_TX_BUF,
      get_unaligned_be32(src));


 tx_ctrl_value |= length << TX_CTL_NT_SHIFT;

 tx_ctrl_value |= NPS_ENET_ENABLE << TX_CTL_CT_SHIFT;

 nps_enet_reg_set(priv, NPS_ENET_REG_TX_CTL, tx_ctrl_value);
}
