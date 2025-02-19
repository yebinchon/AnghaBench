
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uli526x_board_info {scalar_t__ rx_avail_cnt; struct rx_desc* rx_insert_ptr; int pdev; } ;
struct sk_buff {int dummy; } ;
struct rx_desc {struct rx_desc* next_rx_desc; void* rdes0; void* rdes2; struct sk_buff* rx_skb_ptr; } ;
struct net_device {int dummy; } ;


 int PCI_DMA_FROMDEVICE ;
 int RX_ALLOC_SIZE ;
 scalar_t__ RX_DESC_CNT ;
 void* cpu_to_le32 (int) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 struct uli526x_board_info* netdev_priv (struct net_device*) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int wmb () ;

__attribute__((used)) static void allocate_rx_buffer(struct net_device *dev)
{
 struct uli526x_board_info *db = netdev_priv(dev);
 struct rx_desc *rxptr;
 struct sk_buff *skb;

 rxptr = db->rx_insert_ptr;

 while(db->rx_avail_cnt < RX_DESC_CNT) {
  skb = netdev_alloc_skb(dev, RX_ALLOC_SIZE);
  if (skb == ((void*)0))
   break;
  rxptr->rx_skb_ptr = skb;
  rxptr->rdes2 = cpu_to_le32(pci_map_single(db->pdev,
         skb_tail_pointer(skb),
         RX_ALLOC_SIZE,
         PCI_DMA_FROMDEVICE));
  wmb();
  rxptr->rdes0 = cpu_to_le32(0x80000000);
  rxptr = rxptr->next_rx_desc;
  db->rx_avail_cnt++;
 }

 db->rx_insert_ptr = rxptr;
}
