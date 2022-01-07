
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int data; } ;
struct qlcnic_recv_context {struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_rds_ring {int num_desc; int skb_size; } ;
struct TYPE_4__ {int rxbytes; int rx_pkts; } ;
struct qlcnic_adapter {int max_rds_rings; TYPE_2__ stats; TYPE_1__* ahw; int mac_addr; struct qlcnic_recv_context* recv_ctx; } ;
struct TYPE_3__ {int diag_cnt; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int dump_skb (struct sk_buff*,struct qlcnic_adapter*) ;
 int qlcnic_check_loopback_buff (int ,int ) ;
 int qlcnic_get_sts_pkt_offset (int ) ;
 int qlcnic_get_sts_refhandle (int ) ;
 int qlcnic_get_sts_status (int ) ;
 int qlcnic_get_sts_totallength (int ) ;
 struct sk_buff* qlcnic_process_rxbuf (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void qlcnic_process_rcv_diag(struct qlcnic_adapter *adapter, int ring,
        u64 sts_data0)
{
 struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
 struct sk_buff *skb;
 struct qlcnic_host_rds_ring *rds_ring;
 int index, length, cksum, pkt_offset;

 if (unlikely(ring >= adapter->max_rds_rings))
  return;

 rds_ring = &recv_ctx->rds_rings[ring];

 index = qlcnic_get_sts_refhandle(sts_data0);
 length = qlcnic_get_sts_totallength(sts_data0);
 if (unlikely(index >= rds_ring->num_desc))
  return;

 cksum = qlcnic_get_sts_status(sts_data0);
 pkt_offset = qlcnic_get_sts_pkt_offset(sts_data0);

 skb = qlcnic_process_rxbuf(adapter, rds_ring, index, cksum);
 if (!skb)
  return;

 if (length > rds_ring->skb_size)
  skb_put(skb, rds_ring->skb_size);
 else
  skb_put(skb, length);

 if (pkt_offset)
  skb_pull(skb, pkt_offset);

 if (!qlcnic_check_loopback_buff(skb->data, adapter->mac_addr))
  adapter->ahw->diag_cnt++;
 else
  dump_skb(skb, adapter);

 dev_kfree_skb_any(skb);
 adapter->stats.rx_pkts++;
 adapter->stats.rxbytes += length;

 return;
}
