
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int encapsulation; int protocol; scalar_t__ data; } ;
struct qlcnic_skb_frag {int dma; int length; } ;
struct TYPE_6__ {int xmit_called; int tx_bytes; int xmit_off; } ;
struct qlcnic_host_tx_ring {size_t num_desc; size_t producer; TYPE_1__ tx_stats; struct qlcnic_cmd_buffer* cmd_buf_arr; struct cmd_desc_type0* desc_head; int txq; } ;
struct qlcnic_cmd_buffer {int frag_count; struct qlcnic_skb_frag* frag_array; struct sk_buff* skb; } ;
struct TYPE_7__ {int txdropped; int tx_dma_map_error; } ;
struct qlcnic_adapter {int flags; TYPE_2__ stats; scalar_t__ drv_mac_learn; int portnum; struct pci_dev* pdev; struct qlcnic_host_tx_ring* tx_ring; int mac_addr; int state; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethhdr {int h_source; } ;
struct cmd_desc_type0 {void* addr_buffer4; void* addr_buffer3; void* addr_buffer2; void* addr_buffer1; int * buffer_length; } ;
typedef int netdev_tx_t ;
struct TYPE_10__ {scalar_t__ protocol; } ;
struct TYPE_9__ {scalar_t__ nexthdr; } ;
struct TYPE_8__ {int nr_frags; int * frags; } ;


 scalar_t__ ETH_P_IP ;
 scalar_t__ ETH_P_IPV6 ;
 scalar_t__ IPPROTO_UDP ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int QLCNIC_MACSPOOF ;
 int QLCNIC_MAX_FRAGS_PER_TX ;
 scalar_t__ TX_STOP_THRESH ;
 int __QLCNIC_DEV_UP ;
 int __pskb_pull_tail (struct sk_buff*,int) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le64 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ether_addr_equal (int ,int ) ;
 void* get_next_index (size_t,size_t) ;
 TYPE_5__* ip_hdr (struct sk_buff*) ;
 TYPE_4__* ipv6_hdr (struct sk_buff*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int netif_tx_start_queue (int ) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int netif_tx_stop_queue (int ) ;
 scalar_t__ ntohs (int ) ;
 int qlcnic_clear_cmddesc (int *) ;
 int qlcnic_encap_tx_offload (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_map_tx_skb (struct pci_dev*,struct sk_buff*,struct qlcnic_cmd_buffer*) ;
 int qlcnic_send_filter (struct qlcnic_adapter*,struct cmd_desc_type0*,struct sk_buff*,struct qlcnic_host_tx_ring*) ;
 int qlcnic_set_tx_frags_len (struct cmd_desc_type0*,int,scalar_t__) ;
 int qlcnic_set_tx_port (struct cmd_desc_type0*,int ) ;
 scalar_t__ qlcnic_tx_avail (struct qlcnic_host_tx_ring*) ;
 int qlcnic_tx_encap_pkt (struct qlcnic_adapter*,struct cmd_desc_type0*,struct sk_buff*,struct qlcnic_host_tx_ring*) ;
 int qlcnic_tx_pkt (struct qlcnic_adapter*,struct cmd_desc_type0*,struct sk_buff*,struct qlcnic_host_tx_ring*) ;
 int qlcnic_unmap_buffers (struct pci_dev*,struct sk_buff*,struct qlcnic_cmd_buffer*) ;
 int qlcnic_update_cmd_producer (struct qlcnic_host_tx_ring*) ;
 scalar_t__ skb_frag_size (int *) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int smp_mb () ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

netdev_tx_t qlcnic_xmit_frame(struct sk_buff *skb, struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_host_tx_ring *tx_ring;
 struct qlcnic_cmd_buffer *pbuf;
 struct qlcnic_skb_frag *buffrag;
 struct cmd_desc_type0 *hwdesc, *first_desc;
 struct pci_dev *pdev;
 struct ethhdr *phdr;
 int i, k, frag_count, delta = 0;
 u32 producer, num_txd;
 u16 protocol;
 bool l4_is_udp = 0;

 if (!test_bit(__QLCNIC_DEV_UP, &adapter->state)) {
  netif_tx_stop_all_queues(netdev);
  return NETDEV_TX_BUSY;
 }

 if (adapter->flags & QLCNIC_MACSPOOF) {
  phdr = (struct ethhdr *)skb->data;
  if (!ether_addr_equal(phdr->h_source, adapter->mac_addr))
   goto drop_packet;
 }

 tx_ring = &adapter->tx_ring[skb_get_queue_mapping(skb)];
 num_txd = tx_ring->num_desc;

 frag_count = skb_shinfo(skb)->nr_frags + 1;




 if (!skb_is_gso(skb) && frag_count > QLCNIC_MAX_FRAGS_PER_TX) {
  for (i = 0; i < (frag_count - QLCNIC_MAX_FRAGS_PER_TX); i++)
   delta += skb_frag_size(&skb_shinfo(skb)->frags[i]);

  if (!__pskb_pull_tail(skb, delta))
   goto drop_packet;

  frag_count = 1 + skb_shinfo(skb)->nr_frags;
 }

 if (unlikely(qlcnic_tx_avail(tx_ring) <= TX_STOP_THRESH)) {
  netif_tx_stop_queue(tx_ring->txq);
  if (qlcnic_tx_avail(tx_ring) > TX_STOP_THRESH) {
   netif_tx_start_queue(tx_ring->txq);
  } else {
   tx_ring->tx_stats.xmit_off++;
   return NETDEV_TX_BUSY;
  }
 }

 producer = tx_ring->producer;
 pbuf = &tx_ring->cmd_buf_arr[producer];
 pdev = adapter->pdev;
 first_desc = &tx_ring->desc_head[producer];
 hwdesc = &tx_ring->desc_head[producer];
 qlcnic_clear_cmddesc((u64 *)hwdesc);

 if (qlcnic_map_tx_skb(pdev, skb, pbuf)) {
  adapter->stats.tx_dma_map_error++;
  goto drop_packet;
 }

 pbuf->skb = skb;
 pbuf->frag_count = frag_count;

 qlcnic_set_tx_frags_len(first_desc, frag_count, skb->len);
 qlcnic_set_tx_port(first_desc, adapter->portnum);

 for (i = 0; i < frag_count; i++) {
  k = i % 4;

  if ((k == 0) && (i > 0)) {

   producer = get_next_index(producer, num_txd);
   hwdesc = &tx_ring->desc_head[producer];
   qlcnic_clear_cmddesc((u64 *)hwdesc);
   tx_ring->cmd_buf_arr[producer].skb = ((void*)0);
  }

  buffrag = &pbuf->frag_array[i];
  hwdesc->buffer_length[k] = cpu_to_le16(buffrag->length);
  switch (k) {
  case 0:
   hwdesc->addr_buffer1 = cpu_to_le64(buffrag->dma);
   break;
  case 1:
   hwdesc->addr_buffer2 = cpu_to_le64(buffrag->dma);
   break;
  case 2:
   hwdesc->addr_buffer3 = cpu_to_le64(buffrag->dma);
   break;
  case 3:
   hwdesc->addr_buffer4 = cpu_to_le64(buffrag->dma);
   break;
  }
 }

 tx_ring->producer = get_next_index(producer, num_txd);
 smp_mb();

 protocol = ntohs(skb->protocol);
 if (protocol == ETH_P_IP)
  l4_is_udp = ip_hdr(skb)->protocol == IPPROTO_UDP;
 else if (protocol == ETH_P_IPV6)
  l4_is_udp = ipv6_hdr(skb)->nexthdr == IPPROTO_UDP;


 if (!skb->encapsulation || !l4_is_udp ||
     !qlcnic_encap_tx_offload(adapter)) {
  if (unlikely(qlcnic_tx_pkt(adapter, first_desc, skb,
        tx_ring)))
   goto unwind_buff;
 } else {
  if (unlikely(qlcnic_tx_encap_pkt(adapter, first_desc,
       skb, tx_ring)))
   goto unwind_buff;
 }

 if (adapter->drv_mac_learn)
  qlcnic_send_filter(adapter, first_desc, skb, tx_ring);

 tx_ring->tx_stats.tx_bytes += skb->len;
 tx_ring->tx_stats.xmit_called++;


 wmb();
 qlcnic_update_cmd_producer(tx_ring);

 return NETDEV_TX_OK;

unwind_buff:
 qlcnic_unmap_buffers(pdev, skb, pbuf);
drop_packet:
 adapter->stats.txdropped++;
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
