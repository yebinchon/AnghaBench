
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device_stats {int tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int can_id; int can_dlc; scalar_t__ data; } ;
struct at91_priv {int tx_next; } ;
typedef int netdev_tx_t ;


 int AT91_IER ;
 int AT91_MB_MODE_DISABLED ;
 int AT91_MB_MODE_TX ;
 int AT91_MCR (unsigned int) ;
 int AT91_MCR_MRTR ;
 int AT91_MCR_MTCR ;
 int AT91_MDH (unsigned int) ;
 int AT91_MDL (unsigned int) ;
 int AT91_MID (unsigned int) ;
 int AT91_MSR (unsigned int) ;
 int AT91_MSR_MRDY ;
 int CAN_RTR_FLAG ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int at91_can_id_to_reg_mid (int) ;
 int at91_read (struct at91_priv*,int ) ;
 int at91_write (struct at91_priv*,int ,int) ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,scalar_t__) ;
 scalar_t__ get_mb_tx_first (struct at91_priv*) ;
 int get_next_mask (struct at91_priv*) ;
 unsigned int get_tx_next_mb (struct at91_priv*) ;
 unsigned int get_tx_next_prio (struct at91_priv*) ;
 int netdev_err (struct net_device*,char*) ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int set_mb_mode (struct at91_priv*,unsigned int,int ) ;
 int set_mb_mode_prio (struct at91_priv*,unsigned int,int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t at91_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct at91_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct can_frame *cf = (struct can_frame *)skb->data;
 unsigned int mb, prio;
 u32 reg_mid, reg_mcr;

 if (can_dropped_invalid_skb(dev, skb))
  return NETDEV_TX_OK;

 mb = get_tx_next_mb(priv);
 prio = get_tx_next_prio(priv);

 if (unlikely(!(at91_read(priv, AT91_MSR(mb)) & AT91_MSR_MRDY))) {
  netif_stop_queue(dev);

  netdev_err(dev, "BUG! TX buffer full when queue awake!\n");
  return NETDEV_TX_BUSY;
 }
 reg_mid = at91_can_id_to_reg_mid(cf->can_id);
 reg_mcr = ((cf->can_id & CAN_RTR_FLAG) ? AT91_MCR_MRTR : 0) |
  (cf->can_dlc << 16) | AT91_MCR_MTCR;


 set_mb_mode(priv, mb, AT91_MB_MODE_DISABLED);
 at91_write(priv, AT91_MID(mb), reg_mid);
 set_mb_mode_prio(priv, mb, AT91_MB_MODE_TX, prio);

 at91_write(priv, AT91_MDL(mb), *(u32 *)(cf->data + 0));
 at91_write(priv, AT91_MDH(mb), *(u32 *)(cf->data + 4));


 at91_write(priv, AT91_MCR(mb), reg_mcr);

 stats->tx_bytes += cf->can_dlc;


 can_put_echo_skb(skb, dev, mb - get_mb_tx_first(priv));
 priv->tx_next++;
 if (!(at91_read(priv, AT91_MSR(get_tx_next_mb(priv))) &
       AT91_MSR_MRDY) ||
     (priv->tx_next & get_next_mask(priv)) == 0)
  netif_stop_queue(dev);


 at91_write(priv, AT91_IER, 1 << mb);

 return NETDEV_TX_OK;
}
