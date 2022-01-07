
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int ctrlmode; } ;
struct sun4ican_priv {int base; TYPE_1__ can; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; int can_dlc; int* data; } ;
typedef int netdev_tx_t ;
typedef int canid_t ;


 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_EFF_FLAG ;
 int CAN_RTR_FLAG ;
 int NETDEV_TX_OK ;
 int SUN4I_CMD_SELF_RCV_REQ ;
 int SUN4I_CMD_TRANS_REQ ;
 int SUN4I_MSG_EFF_FLAG ;
 int SUN4I_MSG_RTR_FLAG ;
 int SUN4I_REG_BUF0_ADDR ;
 int SUN4I_REG_BUF1_ADDR ;
 int SUN4I_REG_BUF2_ADDR ;
 int SUN4I_REG_BUF3_ADDR ;
 int SUN4I_REG_BUF4_ADDR ;
 int SUN4I_REG_BUF5_ADDR ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,int ) ;
 struct sun4ican_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sun4i_can_write_cmdreg (struct sun4ican_priv*,int ) ;
 int writel (int,int) ;

__attribute__((used)) static netdev_tx_t sun4ican_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct sun4ican_priv *priv = netdev_priv(dev);
 struct can_frame *cf = (struct can_frame *)skb->data;
 u8 dlc;
 u32 dreg, msg_flag_n;
 canid_t id;
 int i;

 if (can_dropped_invalid_skb(dev, skb))
  return NETDEV_TX_OK;

 netif_stop_queue(dev);

 id = cf->can_id;
 dlc = cf->can_dlc;
 msg_flag_n = dlc;

 if (id & CAN_RTR_FLAG)
  msg_flag_n |= SUN4I_MSG_RTR_FLAG;

 if (id & CAN_EFF_FLAG) {
  msg_flag_n |= SUN4I_MSG_EFF_FLAG;
  dreg = SUN4I_REG_BUF5_ADDR;
  writel((id >> 21) & 0xFF, priv->base + SUN4I_REG_BUF1_ADDR);
  writel((id >> 13) & 0xFF, priv->base + SUN4I_REG_BUF2_ADDR);
  writel((id >> 5) & 0xFF, priv->base + SUN4I_REG_BUF3_ADDR);
  writel((id << 3) & 0xF8, priv->base + SUN4I_REG_BUF4_ADDR);
 } else {
  dreg = SUN4I_REG_BUF3_ADDR;
  writel((id >> 3) & 0xFF, priv->base + SUN4I_REG_BUF1_ADDR);
  writel((id << 5) & 0xE0, priv->base + SUN4I_REG_BUF2_ADDR);
 }

 for (i = 0; i < dlc; i++)
  writel(cf->data[i], priv->base + (dreg + i * 4));

 writel(msg_flag_n, priv->base + SUN4I_REG_BUF0_ADDR);

 can_put_echo_skb(skb, dev, 0);

 if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK)
  sun4i_can_write_cmdreg(priv, SUN4I_CMD_SELF_RCV_REQ);
 else
  sun4i_can_write_cmdreg(priv, SUN4I_CMD_TRANS_REQ);

 return NETDEV_TX_OK;
}
