
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uli526x_board_info {int cr6_data; struct rx_desc* rx_ready_ptr; int pdev; int interval_rx_cnt; scalar_t__ rx_avail_cnt; } ;
struct sk_buff {int protocol; } ;
struct rx_desc {struct rx_desc* next_rx_desc; struct sk_buff* rx_skb_ptr; int rdes2; int rdes0; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_length_errors; int rx_crc_errors; int rx_fifo_errors; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int CR6_PM ;
 int PCI_DMA_FROMDEVICE ;
 int RX_ALLOC_SIZE ;
 int RX_COPY_SIZE ;
 int ULI526X_DBUG (int ,char*,int) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int le32_to_cpu (int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 int netif_rx (struct sk_buff*) ;
 int pci_unmap_single (int ,int,int ,int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int ,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int uli526x_reuse_skb (struct uli526x_board_info*,struct sk_buff*) ;

__attribute__((used)) static void uli526x_rx_packet(struct net_device *dev, struct uli526x_board_info * db)
{
 struct rx_desc *rxptr;
 struct sk_buff *skb;
 int rxlen;
 u32 rdes0;

 rxptr = db->rx_ready_ptr;

 while(db->rx_avail_cnt) {
  rdes0 = le32_to_cpu(rxptr->rdes0);
  if (rdes0 & 0x80000000)
  {
   break;
  }

  db->rx_avail_cnt--;
  db->interval_rx_cnt++;

  pci_unmap_single(db->pdev, le32_to_cpu(rxptr->rdes2), RX_ALLOC_SIZE, PCI_DMA_FROMDEVICE);
  if ( (rdes0 & 0x300) != 0x300) {


   ULI526X_DBUG(0, "Reuse SK buffer, rdes0", rdes0);
   uli526x_reuse_skb(db, rxptr->rx_skb_ptr);
  } else {

   rxlen = ( (rdes0 >> 16) & 0x3fff) - 4;


   if (rdes0 & 0x8000) {

    dev->stats.rx_errors++;
    if (rdes0 & 1)
     dev->stats.rx_fifo_errors++;
    if (rdes0 & 2)
     dev->stats.rx_crc_errors++;
    if (rdes0 & 0x80)
     dev->stats.rx_length_errors++;
   }

   if ( !(rdes0 & 0x8000) ||
    ((db->cr6_data & CR6_PM) && (rxlen>6)) ) {
    struct sk_buff *new_skb = ((void*)0);

    skb = rxptr->rx_skb_ptr;



    if ((rxlen < RX_COPY_SIZE) &&
        (((new_skb = netdev_alloc_skb(dev, rxlen + 2)) != ((void*)0)))) {
     skb = new_skb;

     skb_reserve(skb, 2);
     skb_put_data(skb,
           skb_tail_pointer(rxptr->rx_skb_ptr),
           rxlen);
     uli526x_reuse_skb(db, rxptr->rx_skb_ptr);
    } else
     skb_put(skb, rxlen);

    skb->protocol = eth_type_trans(skb, dev);
    netif_rx(skb);
    dev->stats.rx_packets++;
    dev->stats.rx_bytes += rxlen;

   } else {

    ULI526X_DBUG(0, "Reuse SK buffer, rdes0", rdes0);
    uli526x_reuse_skb(db, rxptr->rx_skb_ptr);
   }
  }

  rxptr = rxptr->next_rx_desc;
 }

 db->rx_ready_ptr = rxptr;
}
