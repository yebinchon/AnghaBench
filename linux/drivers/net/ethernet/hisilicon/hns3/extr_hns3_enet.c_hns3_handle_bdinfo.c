
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {unsigned int len; int protocol; } ;
struct net_device {int features; } ;
struct TYPE_11__ {unsigned int rx_bytes; int rx_multicast; int rx_pkts; int rx_err_cnt; int err_pkt_len; int l2_err; } ;
struct hns3_enet_ring {int next_to_clean; int desc_num; TYPE_6__* tqp_vector; int syncp; TYPE_4__ stats; struct hns3_desc* desc; TYPE_3__* tqp; } ;
struct TYPE_14__ {int rss_hash; int pkt_len; int ol_info; int l234_info; int bd_base_info; } ;
struct hns3_desc {TYPE_7__ rx; } ;
typedef enum hns3_pkt_l2t_type { ____Placeholder_hns3_pkt_l2t_type } hns3_pkt_l2t_type ;
struct TYPE_12__ {unsigned int total_bytes; } ;
struct TYPE_13__ {TYPE_5__ rx_group; } ;
struct TYPE_10__ {TYPE_2__* handle; } ;
struct TYPE_8__ {struct net_device* netdev; } ;
struct TYPE_9__ {TYPE_1__ kinfo; } ;


 int BIT (int ) ;
 int EFAULT ;
 int ETH_P_8021Q ;
 int HNS3_L2_TYPE_MULTICAST ;
 int HNS3_RXD_DMAC_M ;
 int HNS3_RXD_DMAC_S ;
 int HNS3_RXD_L2E_B ;
 int HNS3_RXD_TRUNCAT_B ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int hnae3_get_field (int,int ,int ) ;
 scalar_t__ hns3_parse_vlan_tag (struct hns3_enet_ring*,struct hns3_desc*,int,int *) ;
 int hns3_set_gro_and_checksum (struct hns3_enet_ring*,struct sk_buff*,int,int,int) ;
 int hns3_set_rx_skb_rss_type (struct hns3_enet_ring*,struct sk_buff*,int) ;
 int htons (int ) ;
 int le32_to_cpu (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hns3_handle_bdinfo(struct hns3_enet_ring *ring, struct sk_buff *skb)
{
 struct net_device *netdev = ring->tqp->handle->kinfo.netdev;
 enum hns3_pkt_l2t_type l2_frame_type;
 u32 bd_base_info, l234info, ol_info;
 struct hns3_desc *desc;
 unsigned int len;
 int pre_ntc, ret;





 pre_ntc = ring->next_to_clean ? (ring->next_to_clean - 1) :
     (ring->desc_num - 1);
 desc = &ring->desc[pre_ntc];
 bd_base_info = le32_to_cpu(desc->rx.bd_base_info);
 l234info = le32_to_cpu(desc->rx.l234_info);
 ol_info = le32_to_cpu(desc->rx.ol_info);





 if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX) {
  u16 vlan_tag;

  if (hns3_parse_vlan_tag(ring, desc, l234info, &vlan_tag))
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
            vlan_tag);
 }

 if (unlikely(!desc->rx.pkt_len || (l234info & (BIT(HNS3_RXD_TRUNCAT_B) |
      BIT(HNS3_RXD_L2E_B))))) {
  u64_stats_update_begin(&ring->syncp);
  if (l234info & BIT(HNS3_RXD_L2E_B))
   ring->stats.l2_err++;
  else
   ring->stats.err_pkt_len++;
  u64_stats_update_end(&ring->syncp);

  return -EFAULT;
 }

 len = skb->len;


 skb->protocol = eth_type_trans(skb, netdev);


 ret = hns3_set_gro_and_checksum(ring, skb, l234info,
     bd_base_info, ol_info);
 if (unlikely(ret)) {
  u64_stats_update_begin(&ring->syncp);
  ring->stats.rx_err_cnt++;
  u64_stats_update_end(&ring->syncp);
  return ret;
 }

 l2_frame_type = hnae3_get_field(l234info, HNS3_RXD_DMAC_M,
     HNS3_RXD_DMAC_S);

 u64_stats_update_begin(&ring->syncp);
 ring->stats.rx_pkts++;
 ring->stats.rx_bytes += len;

 if (l2_frame_type == HNS3_L2_TYPE_MULTICAST)
  ring->stats.rx_multicast++;

 u64_stats_update_end(&ring->syncp);

 ring->tqp_vector->rx_group.total_bytes += len;

 hns3_set_rx_skb_rss_type(ring, skb, le32_to_cpu(desc->rx.rss_hash));
 return 0;
}
