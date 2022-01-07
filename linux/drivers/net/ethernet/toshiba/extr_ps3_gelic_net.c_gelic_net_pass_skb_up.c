
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; int ip_summed; int protocol; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; } ;
struct net_device {int features; TYPE_1__ stats; } ;
struct gelic_descr {struct sk_buff* skb; int dmac_cmd_status; int buf_size; int result_size; int valid_size; int buf_addr; int data_error; int data_status; } ;
struct gelic_card {int dummy; } ;


 int CHECKSUM_UNNECESSARY ;
 int DMA_FROM_DEVICE ;
 int GELIC_DESCR_DATA_ERROR_CHK_MASK ;
 int GELIC_DESCR_DATA_STATUS_CHK_MASK ;
 int GELIC_NET_MAX_MTU ;
 int NETIF_F_RXCSUM ;
 int be32_to_cpu (int ) ;
 int ctodev (struct gelic_card*) ;
 int dev_info (int ,char*,int,int,int) ;
 int dma_unmap_single (int ,int,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void gelic_net_pass_skb_up(struct gelic_descr *descr,
      struct gelic_card *card,
      struct net_device *netdev)

{
 struct sk_buff *skb = descr->skb;
 u32 data_status, data_error;

 data_status = be32_to_cpu(descr->data_status);
 data_error = be32_to_cpu(descr->data_error);

 dma_unmap_single(ctodev(card), be32_to_cpu(descr->buf_addr),
    GELIC_NET_MAX_MTU,
    DMA_FROM_DEVICE);

 skb_put(skb, be32_to_cpu(descr->valid_size)?
  be32_to_cpu(descr->valid_size) :
  be32_to_cpu(descr->result_size));
 if (!descr->valid_size)
  dev_info(ctodev(card), "buffer full %x %x %x\n",
    be32_to_cpu(descr->result_size),
    be32_to_cpu(descr->buf_size),
    be32_to_cpu(descr->dmac_cmd_status));

 descr->skb = ((void*)0);




 skb_pull(skb, 2);
 skb->protocol = eth_type_trans(skb, netdev);


 if (netdev->features & NETIF_F_RXCSUM) {
  if ((data_status & GELIC_DESCR_DATA_STATUS_CHK_MASK) &&
      (!(data_error & GELIC_DESCR_DATA_ERROR_CHK_MASK)))
   skb->ip_summed = CHECKSUM_UNNECESSARY;
  else
   skb_checksum_none_assert(skb);
 } else
  skb_checksum_none_assert(skb);


 netdev->stats.rx_packets++;
 netdev->stats.rx_bytes += skb->len;


 netif_receive_skb(skb);
}
