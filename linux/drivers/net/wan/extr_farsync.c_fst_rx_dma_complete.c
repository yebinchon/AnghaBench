
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_3__ {int rx_bytes; int rx_dropped; int rx_packets; } ;
struct net_device {TYPE_1__ stats; int name; } ;
struct fst_port_info {int index; scalar_t__ mode; } ;
struct fst_card_info {int rx_dma_handle_host; } ;
struct TYPE_4__ {int bits; } ;


 int DBG_RX ;
 int DBG_TX ;
 int DMA_OWN ;
 scalar_t__ FST_RAW ;
 int FST_WRB (struct fst_card_info*,int ,int ) ;
 int NET_RX_DROP ;
 int dbg (int ,char*) ;
 int farsync_type_trans (struct sk_buff*,struct net_device*) ;
 int fst_process_rx_status (int,int ) ;
 int hdlc_type_trans (struct sk_buff*,struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 struct net_device* port_to_dev (struct fst_port_info*) ;
 TYPE_2__** rxDescrRing ;
 int skb_put_data (struct sk_buff*,int ,int) ;

__attribute__((used)) static void
fst_rx_dma_complete(struct fst_card_info *card, struct fst_port_info *port,
      int len, struct sk_buff *skb, int rxp)
{
 struct net_device *dev = port_to_dev(port);
 int pi;
 int rx_status;

 dbg(DBG_TX, "fst_rx_dma_complete\n");
 pi = port->index;
 skb_put_data(skb, card->rx_dma_handle_host, len);


 FST_WRB(card, rxDescrRing[pi][rxp].bits, DMA_OWN);


 dev->stats.rx_packets++;
 dev->stats.rx_bytes += len;


 dbg(DBG_RX, "Pushing the frame up the stack\n");
 if (port->mode == FST_RAW)
  skb->protocol = farsync_type_trans(skb, dev);
 else
  skb->protocol = hdlc_type_trans(skb, dev);
 rx_status = netif_rx(skb);
 fst_process_rx_status(rx_status, port_to_dev(port)->name);
 if (rx_status == NET_RX_DROP)
  dev->stats.rx_dropped++;
}
