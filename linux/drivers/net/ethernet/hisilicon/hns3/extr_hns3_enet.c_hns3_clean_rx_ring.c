
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct sk_buff sk_buff ;
struct hns3_enet_ring {struct sk_buff* skb; int pending_buf; TYPE_1__* tqp; } ;
struct TYPE_2__ {scalar_t__ io_base; } ;


 int ENXIO ;
 scalar_t__ HNS3_RING_RX_RING_FBDNUM_REG ;
 int RCB_NOF_ALLOC_RX_BUFF_ONCE ;
 int hns3_desc_unused (struct hns3_enet_ring*) ;
 int hns3_handle_rx_bd (struct hns3_enet_ring*,struct sk_buff**) ;
 int hns3_nic_alloc_rx_buffers (struct hns3_enet_ring*,int) ;
 int readl_relaxed (scalar_t__) ;
 int rmb () ;
 scalar_t__ unlikely (int) ;

int hns3_clean_rx_ring(struct hns3_enet_ring *ring, int budget,
         void (*rx_fn)(struct hns3_enet_ring *, struct sk_buff *))
{

 int unused_count = hns3_desc_unused(ring);
 struct sk_buff *skb = ring->skb;
 int recv_pkts = 0;
 int recv_bds = 0;
 int err, num;

 num = readl_relaxed(ring->tqp->io_base + HNS3_RING_RX_RING_FBDNUM_REG);
 rmb();

 num -= unused_count;
 unused_count -= ring->pending_buf;

 while (recv_pkts < budget && recv_bds < num) {

  if (unused_count >= 16) {
   hns3_nic_alloc_rx_buffers(ring, unused_count);
   unused_count = hns3_desc_unused(ring) -
     ring->pending_buf;
  }


  err = hns3_handle_rx_bd(ring, &skb);
  if (unlikely(!skb))
   goto out;

  if (err == -ENXIO) {
   goto out;
  } else if (unlikely(err)) {
   recv_bds += ring->pending_buf;
   unused_count += ring->pending_buf;
   ring->skb = ((void*)0);
   ring->pending_buf = 0;
   continue;
  }

  rx_fn(ring, skb);
  recv_bds += ring->pending_buf;
  unused_count += ring->pending_buf;
  ring->skb = ((void*)0);
  ring->pending_buf = 0;

  recv_pkts++;
 }

out:

 if (unused_count > 0)
  hns3_nic_alloc_rx_buffers(ring, unused_count);

 return recv_pkts;
}
