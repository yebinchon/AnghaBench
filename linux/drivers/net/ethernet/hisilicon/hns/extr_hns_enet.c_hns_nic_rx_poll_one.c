
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hns_nic_ring_data {struct hnae_ring* ring; } ;
struct hnae_ring {scalar_t__ io_base; } ;


 int RCB_NOF_ALLOC_RX_BUFF_ONCE ;
 scalar_t__ RCB_REG_FBDNUM ;
 int hns_desc_unused (struct hnae_ring*) ;
 int hns_nic_alloc_rx_buffers (struct hns_nic_ring_data*,int) ;
 int hns_nic_poll_rx_skb (struct hns_nic_ring_data*,struct sk_buff**,int*) ;
 int readl_relaxed (scalar_t__) ;
 int rmb () ;
 void stub1 (struct hns_nic_ring_data*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hns_nic_rx_poll_one(struct hns_nic_ring_data *ring_data,
          int budget, void *v)
{
 struct hnae_ring *ring = ring_data->ring;
 struct sk_buff *skb;
 int num, bnum;

 int recv_pkts, recv_bds, clean_count, err;
 int unused_count = hns_desc_unused(ring);

 num = readl_relaxed(ring->io_base + RCB_REG_FBDNUM);
 rmb();

 recv_pkts = 0, recv_bds = 0, clean_count = 0;
 num -= unused_count;

 while (recv_pkts < budget && recv_bds < num) {

  if (clean_count + unused_count >= 16) {
   hns_nic_alloc_rx_buffers(ring_data,
       clean_count + unused_count);
   clean_count = 0;
   unused_count = hns_desc_unused(ring);
  }


  err = hns_nic_poll_rx_skb(ring_data, &skb, &bnum);
  if (unlikely(!skb))
   goto out;

  recv_bds += bnum;
  clean_count += bnum;
  if (unlikely(err)) {
   recv_pkts++;
   continue;
  }


  ((void (*)(struct hns_nic_ring_data *, struct sk_buff *))v)(
       ring_data, skb);
  recv_pkts++;
 }

out:

 if (clean_count + unused_count > 0)
  hns_nic_alloc_rx_buffers(ring_data,
      clean_count + unused_count);

 return recv_pkts;
}
