
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct sja1000_priv {TYPE_1__ can; int (* write_reg ) (struct sja1000_priv*,int ,int) ;} ;
struct net_device {int dummy; } ;
struct can_frame {int can_dlc; int can_id; int* data; } ;
typedef int netdev_tx_t ;
typedef int canid_t ;


 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_CTRLMODE_ONE_SHOT ;
 int CAN_EFF_FLAG ;
 int CAN_RTR_FLAG ;
 int CMD_AT ;
 int CMD_SRR ;
 int CMD_TR ;
 int NETDEV_TX_OK ;
 int SJA1000_EFF_BUF ;
 int SJA1000_FI ;
 int SJA1000_FI_FF ;
 int SJA1000_FI_RTR ;
 int SJA1000_ID1 ;
 int SJA1000_ID2 ;
 int SJA1000_ID3 ;
 int SJA1000_ID4 ;
 int SJA1000_SFF_BUF ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,int ) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sja1000_write_cmdreg (struct sja1000_priv*,int) ;
 int stub1 (struct sja1000_priv*,int ,int) ;
 int stub2 (struct sja1000_priv*,int ,int) ;
 int stub3 (struct sja1000_priv*,int ,int) ;
 int stub4 (struct sja1000_priv*,int ,int) ;
 int stub5 (struct sja1000_priv*,int ,int) ;
 int stub6 (struct sja1000_priv*,int ,int) ;
 int stub7 (struct sja1000_priv*,int ,int) ;
 int stub8 (struct sja1000_priv*,int ,int) ;
 int stub9 (struct sja1000_priv*,int ,int) ;

__attribute__((used)) static netdev_tx_t sja1000_start_xmit(struct sk_buff *skb,
         struct net_device *dev)
{
 struct sja1000_priv *priv = netdev_priv(dev);
 struct can_frame *cf = (struct can_frame *)skb->data;
 uint8_t fi;
 uint8_t dlc;
 canid_t id;
 uint8_t dreg;
 u8 cmd_reg_val = 0x00;
 int i;

 if (can_dropped_invalid_skb(dev, skb))
  return NETDEV_TX_OK;

 netif_stop_queue(dev);

 fi = dlc = cf->can_dlc;
 id = cf->can_id;

 if (id & CAN_RTR_FLAG)
  fi |= SJA1000_FI_RTR;

 if (id & CAN_EFF_FLAG) {
  fi |= SJA1000_FI_FF;
  dreg = SJA1000_EFF_BUF;
  priv->write_reg(priv, SJA1000_FI, fi);
  priv->write_reg(priv, SJA1000_ID1, (id & 0x1fe00000) >> 21);
  priv->write_reg(priv, SJA1000_ID2, (id & 0x001fe000) >> 13);
  priv->write_reg(priv, SJA1000_ID3, (id & 0x00001fe0) >> 5);
  priv->write_reg(priv, SJA1000_ID4, (id & 0x0000001f) << 3);
 } else {
  dreg = SJA1000_SFF_BUF;
  priv->write_reg(priv, SJA1000_FI, fi);
  priv->write_reg(priv, SJA1000_ID1, (id & 0x000007f8) >> 3);
  priv->write_reg(priv, SJA1000_ID2, (id & 0x00000007) << 5);
 }

 for (i = 0; i < dlc; i++)
  priv->write_reg(priv, dreg++, cf->data[i]);

 can_put_echo_skb(skb, dev, 0);

 if (priv->can.ctrlmode & CAN_CTRLMODE_ONE_SHOT)
  cmd_reg_val |= CMD_AT;

 if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK)
  cmd_reg_val |= CMD_SRR;
 else
  cmd_reg_val |= CMD_TR;

 sja1000_write_cmdreg(priv, cmd_reg_val);

 return NETDEV_TX_OK;
}
