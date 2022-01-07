
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct ifi_canfd_priv {scalar_t__ base; TYPE_1__ can; } ;
struct canfd_frame {int can_id; int len; int flags; scalar_t__ data; } ;
typedef int netdev_tx_t ;


 int CANFD_BRS ;
 int CAN_CTRLMODE_FD ;
 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 scalar_t__ IFI_CANFD_TXFIFO_DATA ;
 scalar_t__ IFI_CANFD_TXFIFO_DLC ;
 int IFI_CANFD_TXFIFO_DLC_BRS ;
 int IFI_CANFD_TXFIFO_DLC_EDL ;
 int IFI_CANFD_TXFIFO_DLC_RTR ;
 scalar_t__ IFI_CANFD_TXFIFO_ID ;
 int IFI_CANFD_TXFIFO_ID_IDE ;
 int IFI_CANFD_TXFIFO_ID_ID_XTD_MASK ;
 int IFI_CANFD_TXFIFO_ID_ID_XTD_OFFSET ;
 int IFI_CANFD_TXFIFO_ID_ID_XTD_WIDTH ;
 scalar_t__ IFI_CANFD_TXFIFO_REPEATCOUNT ;
 scalar_t__ IFI_CANFD_TXFIFO_SUSPEND_US ;
 scalar_t__ IFI_CANFD_TXSTCMD ;
 int IFI_CANFD_TXSTCMD_ADD_MSG ;
 int IFI_CANFD_TXSTCMD_FULL ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ can_dropped_invalid_skb (struct net_device*,struct sk_buff*) ;
 scalar_t__ can_is_canfd_skb (struct sk_buff*) ;
 int can_len2dlc (int) ;
 int can_put_echo_skb (struct sk_buff*,struct net_device*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct ifi_canfd_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static netdev_tx_t ifi_canfd_start_xmit(struct sk_buff *skb,
     struct net_device *ndev)
{
 struct ifi_canfd_priv *priv = netdev_priv(ndev);
 struct canfd_frame *cf = (struct canfd_frame *)skb->data;
 u32 txst, txid, txdlc;
 int i;

 if (can_dropped_invalid_skb(ndev, skb))
  return NETDEV_TX_OK;


 txst = readl(priv->base + IFI_CANFD_TXSTCMD);
 if (txst & IFI_CANFD_TXSTCMD_FULL) {
  netif_stop_queue(ndev);
  netdev_err(ndev, "BUG! TX FIFO full when queue awake!\n");
  return NETDEV_TX_BUSY;
 }

 netif_stop_queue(ndev);

 if (cf->can_id & CAN_EFF_FLAG) {
  txid = cf->can_id & CAN_EFF_MASK;






  txid = (txid >> IFI_CANFD_TXFIFO_ID_ID_XTD_WIDTH) |
         ((txid & IFI_CANFD_TXFIFO_ID_ID_XTD_MASK) <<
           IFI_CANFD_TXFIFO_ID_ID_XTD_OFFSET);
  txid |= IFI_CANFD_TXFIFO_ID_IDE;
 } else {
  txid = cf->can_id & CAN_SFF_MASK;
 }

 txdlc = can_len2dlc(cf->len);
 if ((priv->can.ctrlmode & CAN_CTRLMODE_FD) && can_is_canfd_skb(skb)) {
  txdlc |= IFI_CANFD_TXFIFO_DLC_EDL;
  if (cf->flags & CANFD_BRS)
   txdlc |= IFI_CANFD_TXFIFO_DLC_BRS;
 }

 if (cf->can_id & CAN_RTR_FLAG)
  txdlc |= IFI_CANFD_TXFIFO_DLC_RTR;


 writel(txid, priv->base + IFI_CANFD_TXFIFO_ID);
 writel(txdlc, priv->base + IFI_CANFD_TXFIFO_DLC);

 for (i = 0; i < cf->len; i += 4) {
  writel(*(u32 *)(cf->data + i),
         priv->base + IFI_CANFD_TXFIFO_DATA + i);
 }

 writel(0, priv->base + IFI_CANFD_TXFIFO_REPEATCOUNT);
 writel(0, priv->base + IFI_CANFD_TXFIFO_SUSPEND_US);

 can_put_echo_skb(skb, ndev, 0);


 writel(IFI_CANFD_TXSTCMD_ADD_MSG, priv->base + IFI_CANFD_TXSTCMD);

 return NETDEV_TX_OK;
}
