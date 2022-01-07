
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ifi_canfd_priv {scalar_t__ base; } ;


 int CAN_LED_EVENT_RX ;
 scalar_t__ IFI_CANFD_RXSTCMD ;
 int IFI_CANFD_RXSTCMD_EMPTY ;
 int can_led_event (struct net_device*,int ) ;
 int ifi_canfd_read_fifo (struct net_device*) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct ifi_canfd_priv* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int ifi_canfd_do_rx_poll(struct net_device *ndev, int quota)
{
 struct ifi_canfd_priv *priv = netdev_priv(ndev);
 u32 pkts = 0;
 u32 rxst;

 rxst = readl(priv->base + IFI_CANFD_RXSTCMD);
 if (rxst & IFI_CANFD_RXSTCMD_EMPTY) {
  netdev_dbg(ndev, "No messages in RX FIFO\n");
  return 0;
 }

 for (;;) {
  if (rxst & IFI_CANFD_RXSTCMD_EMPTY)
   break;
  if (quota <= 0)
   break;

  ifi_canfd_read_fifo(ndev);
  quota--;
  pkts++;
  rxst = readl(priv->base + IFI_CANFD_RXSTCMD);
 }

 if (pkts)
  can_led_event(ndev, CAN_LED_EVENT_RX);

 return pkts;
}
