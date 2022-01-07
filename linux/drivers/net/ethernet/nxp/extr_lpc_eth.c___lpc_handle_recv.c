
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sk_buff {int protocol; } ;
struct rx_status_t {int statusinfo; } ;
struct netdata_local {int net_base; scalar_t__ rx_buff_v; struct rx_status_t* rx_stat_v; } ;
struct TYPE_2__ {size_t rx_bytes; int rx_packets; int rx_dropped; int rx_errors; int rx_length_errors; int rx_crc_errors; int rx_fifo_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 size_t ENET_MAXF_SIZE ;
 size_t ENET_RX_DESC ;
 int LPC_ENET_RXCONSUMEINDEX (int ) ;
 int LPC_ENET_RXPRODUCEINDEX (int ) ;
 int RXSTATUS_CRC ;
 size_t RXSTATUS_ERROR ;
 int RXSTATUS_LENGTH ;
 int RXSTATUS_OVERRUN ;
 size_t RXSTATUS_RANGE ;
 int RXSTATUS_SIZE ;
 size_t RXSTATUS_STATUS_ERROR ;
 struct sk_buff* dev_alloc_skb (size_t) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct netdata_local* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 size_t readl (int ) ;
 int skb_put_data (struct sk_buff*,scalar_t__,size_t) ;
 int writel (size_t,int ) ;

__attribute__((used)) static int __lpc_handle_recv(struct net_device *ndev, int budget)
{
 struct netdata_local *pldat = netdev_priv(ndev);
 struct sk_buff *skb;
 u32 rxconsidx, len, ethst;
 struct rx_status_t *prxstat;
 int rx_done = 0;


 rxconsidx = readl(LPC_ENET_RXCONSUMEINDEX(pldat->net_base));
 while (rx_done < budget && rxconsidx !=
   readl(LPC_ENET_RXPRODUCEINDEX(pldat->net_base))) {

  prxstat = &pldat->rx_stat_v[rxconsidx];
  len = (prxstat->statusinfo & RXSTATUS_SIZE) + 1;


  ethst = prxstat->statusinfo;
  if ((ethst & (RXSTATUS_ERROR | RXSTATUS_STATUS_ERROR)) ==
      (RXSTATUS_ERROR | RXSTATUS_RANGE))
   ethst &= ~RXSTATUS_ERROR;

  if (ethst & RXSTATUS_ERROR) {
   int si = prxstat->statusinfo;

   if (si & RXSTATUS_OVERRUN) {

    ndev->stats.rx_fifo_errors++;
   } else if (si & RXSTATUS_CRC) {

    ndev->stats.rx_crc_errors++;
   } else if (si & RXSTATUS_LENGTH) {

    ndev->stats.rx_length_errors++;
   } else if (si & RXSTATUS_ERROR) {

    ndev->stats.rx_length_errors++;
   }
   ndev->stats.rx_errors++;
  } else {

   skb = dev_alloc_skb(len);
   if (!skb) {
    ndev->stats.rx_dropped++;
   } else {

    skb_put_data(skb,
          pldat->rx_buff_v + rxconsidx * ENET_MAXF_SIZE,
          len);


    skb->protocol = eth_type_trans(skb, ndev);
    netif_receive_skb(skb);
    ndev->stats.rx_packets++;
    ndev->stats.rx_bytes += len;
   }
  }


  rxconsidx = rxconsidx + 1;
  if (rxconsidx >= ENET_RX_DESC)
   rxconsidx = 0;
  writel(rxconsidx,
         LPC_ENET_RXCONSUMEINDEX(pldat->net_base));
  rx_done++;
 }

 return rx_done;
}
