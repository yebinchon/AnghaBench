
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int protocol; } ;
struct cfspi {TYPE_2__* ndev; } ;
struct TYPE_4__ {int rx_bytes; int rx_dropped; int rx_packets; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int ETH_P_CAIF ;
 int PAD_POW2 (int,int ) ;
 int caif_assert (int ) ;
 int cfspi_xmit (struct sk_buff*,TYPE_2__*) ;
 int htons (int ) ;
 struct sk_buff* netdev_alloc_skb (TYPE_2__*,int) ;
 int netif_rx_ni (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,int*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int spi_down_head_align ;
 int spi_down_tail_align ;
 int spi_loop ;

int cfspi_rxfrm(struct cfspi *cfspi, u8 *buf, size_t len)
{
 u8 *src = buf;

 caif_assert(buf != ((void*)0));

 do {
  int res;
  struct sk_buff *skb = ((void*)0);
  int spad = 0;
  int epad = 0;
  int pkt_len = 0;





  if (spi_down_head_align > 1) {
   spad = 1 + *src;
   src += spad;
  }


  pkt_len = *src;
  pkt_len |= ((*(src+1)) << 8) & 0xFF00;
  pkt_len += 2;



  skb = netdev_alloc_skb(cfspi->ndev, pkt_len + 1);
  caif_assert(skb != ((void*)0));

  skb_put_data(skb, src, pkt_len);
  src += pkt_len;

  skb->protocol = htons(ETH_P_CAIF);
  skb_reset_mac_header(skb);




  if (!spi_loop)
   res = netif_rx_ni(skb);
  else
   res = cfspi_xmit(skb, cfspi->ndev);

  if (!res) {
   cfspi->ndev->stats.rx_packets++;
   cfspi->ndev->stats.rx_bytes += pkt_len;
  } else
   cfspi->ndev->stats.rx_dropped++;





  epad = PAD_POW2((pkt_len + spad), spi_down_tail_align);
  src += epad;
 } while ((src - buf) < len);

 return src - buf;
}
