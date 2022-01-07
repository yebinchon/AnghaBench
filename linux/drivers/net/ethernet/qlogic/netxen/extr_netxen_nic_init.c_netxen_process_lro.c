
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct tcphdr {int doff; int psh; int seq; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; int protocol; } ;
struct nx_host_sds_ring {int dummy; } ;
struct nx_host_rds_ring {int num_desc; struct netxen_rx_buffer* rx_buf_arr; } ;
struct netxen_rx_buffer {int dummy; } ;
struct netxen_recv_context {struct nx_host_rds_ring* rds_rings; } ;
struct TYPE_3__ {int rxbytes; int lro_pkts; } ;
struct netxen_adapter {int max_rds_rings; int flags; TYPE_1__ stats; struct netxen_recv_context recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct iphdr {int ihl; int tot_len; int check; } ;
struct TYPE_4__ {int gso_size; } ;


 scalar_t__ ETH_P_8021Q ;
 int NETXEN_FW_MSS_CAP ;
 int STATUS_CKSUM_OK ;
 scalar_t__ TCP_HDR_SIZE ;
 scalar_t__ TCP_TS_HDR_SIZE ;
 scalar_t__ VLAN_HLEN ;
 int csum_replace2 (int *,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htonl (int ) ;
 int htons (scalar_t__) ;
 int netif_receive_skb (struct sk_buff*) ;
 int netxen_get_lro_sts_l2_hdr_offset (int ) ;
 int netxen_get_lro_sts_l4_hdr_offset (int ) ;
 scalar_t__ netxen_get_lro_sts_length (int ) ;
 int netxen_get_lro_sts_mss (int ) ;
 int netxen_get_lro_sts_push_flag (int ) ;
 int netxen_get_lro_sts_refhandle (int ) ;
 int netxen_get_lro_sts_seq_number (int ) ;
 int netxen_get_lro_sts_timestamp (int ) ;
 struct sk_buff* netxen_process_rxbuf (struct netxen_adapter*,struct nx_host_rds_ring*,int,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct netxen_rx_buffer *
netxen_process_lro(struct netxen_adapter *adapter,
  struct nx_host_sds_ring *sds_ring,
  int ring, u64 sts_data0, u64 sts_data1)
{
 struct net_device *netdev = adapter->netdev;
 struct netxen_recv_context *recv_ctx = &adapter->recv_ctx;
 struct netxen_rx_buffer *buffer;
 struct sk_buff *skb;
 struct nx_host_rds_ring *rds_ring;
 struct iphdr *iph;
 struct tcphdr *th;
 bool push, timestamp;
 int l2_hdr_offset, l4_hdr_offset;
 int index;
 u16 lro_length, length, data_offset;
 u32 seq_number;
 u8 vhdr_len = 0;

 if (unlikely(ring >= adapter->max_rds_rings))
  return ((void*)0);

 rds_ring = &recv_ctx->rds_rings[ring];

 index = netxen_get_lro_sts_refhandle(sts_data0);
 if (unlikely(index >= rds_ring->num_desc))
  return ((void*)0);

 buffer = &rds_ring->rx_buf_arr[index];

 timestamp = netxen_get_lro_sts_timestamp(sts_data0);
 lro_length = netxen_get_lro_sts_length(sts_data0);
 l2_hdr_offset = netxen_get_lro_sts_l2_hdr_offset(sts_data0);
 l4_hdr_offset = netxen_get_lro_sts_l4_hdr_offset(sts_data0);
 push = netxen_get_lro_sts_push_flag(sts_data0);
 seq_number = netxen_get_lro_sts_seq_number(sts_data1);

 skb = netxen_process_rxbuf(adapter, rds_ring, index, STATUS_CKSUM_OK);
 if (!skb)
  return buffer;

 if (timestamp)
  data_offset = l4_hdr_offset + TCP_TS_HDR_SIZE;
 else
  data_offset = l4_hdr_offset + TCP_HDR_SIZE;

 skb_put(skb, lro_length + data_offset);

 skb_pull(skb, l2_hdr_offset);
 skb->protocol = eth_type_trans(skb, netdev);

 if (skb->protocol == htons(ETH_P_8021Q))
  vhdr_len = VLAN_HLEN;
 iph = (struct iphdr *)(skb->data + vhdr_len);
 th = (struct tcphdr *)((skb->data + vhdr_len) + (iph->ihl << 2));

 length = (iph->ihl << 2) + (th->doff << 2) + lro_length;
 csum_replace2(&iph->check, iph->tot_len, htons(length));
 iph->tot_len = htons(length);
 th->psh = push;
 th->seq = htonl(seq_number);

 length = skb->len;

 if (adapter->flags & NETXEN_FW_MSS_CAP)
  skb_shinfo(skb)->gso_size = netxen_get_lro_sts_mss(sts_data1);

 netif_receive_skb(skb);

 adapter->stats.lro_pkts++;
 adapter->stats.rxbytes += length;

 return buffer;
}
