
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int len; int addr; } ;
union mgmt_port_ring_entry {scalar_t__ d64; TYPE_1__ s; } ;
struct sk_buff {int data; } ;
struct octeon_mgmt {scalar_t__ rx_current_fill; size_t rx_next_fill; scalar_t__ mix; int rx_ring_handle; int dev; scalar_t__* rx_ring; int rx_list; } ;
struct net_device {int mtu; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 scalar_t__ MIX_IRING2 ;
 int NET_IP_ALIGN ;
 int OCTEON_MGMT_RX_HEADROOM ;
 int OCTEON_MGMT_RX_RING_SIZE ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int cvmx_write_csr (scalar_t__,int) ;
 int dma_map_single (int ,int ,unsigned int,int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,unsigned int) ;
 struct octeon_mgmt* netdev_priv (struct net_device*) ;
 scalar_t__ ring_max_fill (int) ;
 int ring_size_to_bytes (int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void octeon_mgmt_rx_fill_ring(struct net_device *netdev)
{
 struct octeon_mgmt *p = netdev_priv(netdev);

 while (p->rx_current_fill < ring_max_fill(OCTEON_MGMT_RX_RING_SIZE)) {
  unsigned int size;
  union mgmt_port_ring_entry re;
  struct sk_buff *skb;


  size = netdev->mtu + OCTEON_MGMT_RX_HEADROOM + 8 + NET_IP_ALIGN;

  skb = netdev_alloc_skb(netdev, size);
  if (!skb)
   break;
  skb_reserve(skb, NET_IP_ALIGN);
  __skb_queue_tail(&p->rx_list, skb);

  re.d64 = 0;
  re.s.len = size;
  re.s.addr = dma_map_single(p->dev, skb->data,
        size,
        DMA_FROM_DEVICE);


  p->rx_ring[p->rx_next_fill] = re.d64;
  dma_sync_single_for_device(p->dev, p->rx_ring_handle,
        ring_size_to_bytes(OCTEON_MGMT_RX_RING_SIZE),
        DMA_BIDIRECTIONAL);
  p->rx_next_fill =
   (p->rx_next_fill + 1) % OCTEON_MGMT_RX_RING_SIZE;
  p->rx_current_fill++;

  cvmx_write_csr(p->mix + MIX_IRING2, 1);
 }
}
