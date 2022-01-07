
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int protocol; int data; } ;
struct TYPE_3__ {int pkt_size; int vtag; scalar_t__ align; scalar_t__ crc; scalar_t__ mcast; scalar_t__ ok; scalar_t__ vlan; scalar_t__ update; } ;
struct rx_desc {TYPE_1__ status; int packet; } ;
struct TYPE_4__ {int rx_bytes; int rx_frame_errors; int rx_crc_errors; int multicast; int rx_length_errors; int rx_errors; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct atl2_adapter {int rxd_write_ptr; scalar_t__ rxd_ring_size; scalar_t__ rxd_read_ptr; int hw; struct rx_desc* rxd_ring; struct net_device* netdev; } ;


 int ATL2_WRITE_REGW (int *,int ,scalar_t__) ;
 int ETH_P_8021Q ;
 int REG_MB_RXD_RD_IDX ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int ) ;
 int memcpy (int ,int ,int) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void atl2_intr_rx(struct atl2_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct rx_desc *rxd;
 struct sk_buff *skb;

 do {
  rxd = adapter->rxd_ring+adapter->rxd_write_ptr;
  if (!rxd->status.update)
   break;


  rxd->status.update = 0;

  if (rxd->status.ok && rxd->status.pkt_size >= 60) {
   int rx_size = (int)(rxd->status.pkt_size - 4);

   skb = netdev_alloc_skb_ip_align(netdev, rx_size);
   if (((void*)0) == skb) {




    netdev->stats.rx_dropped++;
    break;
   }
   memcpy(skb->data, rxd->packet, rx_size);
   skb_put(skb, rx_size);
   skb->protocol = eth_type_trans(skb, netdev);
   if (rxd->status.vlan) {
    u16 vlan_tag = (rxd->status.vtag>>4) |
     ((rxd->status.vtag&7) << 13) |
     ((rxd->status.vtag&8) << 9);

    __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
   }
   netif_rx(skb);
   netdev->stats.rx_bytes += rx_size;
   netdev->stats.rx_packets++;
  } else {
   netdev->stats.rx_errors++;

   if (rxd->status.ok && rxd->status.pkt_size <= 60)
    netdev->stats.rx_length_errors++;
   if (rxd->status.mcast)
    netdev->stats.multicast++;
   if (rxd->status.crc)
    netdev->stats.rx_crc_errors++;
   if (rxd->status.align)
    netdev->stats.rx_frame_errors++;
  }


  if (++adapter->rxd_write_ptr == adapter->rxd_ring_size)
   adapter->rxd_write_ptr = 0;
 } while (1);


 adapter->rxd_read_ptr = adapter->rxd_write_ptr;
 ATL2_WRITE_REGW(&adapter->hw, REG_MB_RXD_RD_IDX, adapter->rxd_read_ptr);
}
