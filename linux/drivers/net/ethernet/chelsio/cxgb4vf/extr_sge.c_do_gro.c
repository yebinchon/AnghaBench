
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; int ip_summed; scalar_t__ data_len; int truesize; scalar_t__ len; } ;
struct TYPE_4__ {int rx_cso; int pkts; int lro_merged; int lro_pkts; int vlan_ex; int rx_drops; } ;
struct TYPE_3__ {int napi; int idx; struct adapter* adapter; } ;
struct sge_eth_rxq {TYPE_2__ stats; TYPE_1__ rspq; } ;
struct sge {scalar_t__ pktshift; } ;
struct port_info {int vlan_id; } ;
struct pkt_gl {scalar_t__ tot_len; } ;
struct cpl_rx_pkt {int vlan; scalar_t__ vlan_ex; } ;
struct adapter {struct sge sge; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_8021Q ;
 int GRO_HELD ;
 int GRO_MERGED ;
 int GRO_MERGED_FREE ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int be16_to_cpu (int ) ;
 int copy_frags (struct sk_buff*,struct pkt_gl const*,scalar_t__) ;
 int cpu_to_be16 (int ) ;
 struct sk_buff* napi_get_frags (int *) ;
 int napi_gro_frags (int *) ;
 struct port_info* netdev_priv (int ) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int t4vf_pktgl_free (struct pkt_gl const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void do_gro(struct sge_eth_rxq *rxq, const struct pkt_gl *gl,
     const struct cpl_rx_pkt *pkt)
{
 struct adapter *adapter = rxq->rspq.adapter;
 struct sge *s = &adapter->sge;
 struct port_info *pi;
 int ret;
 struct sk_buff *skb;

 skb = napi_get_frags(&rxq->rspq.napi);
 if (unlikely(!skb)) {
  t4vf_pktgl_free(gl);
  rxq->stats.rx_drops++;
  return;
 }

 copy_frags(skb, gl, s->pktshift);
 skb->len = gl->tot_len - s->pktshift;
 skb->data_len = skb->len;
 skb->truesize += skb->data_len;
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb_record_rx_queue(skb, rxq->rspq.idx);
 pi = netdev_priv(skb->dev);

 if (pkt->vlan_ex && !pi->vlan_id) {
  __vlan_hwaccel_put_tag(skb, cpu_to_be16(ETH_P_8021Q),
     be16_to_cpu(pkt->vlan));
  rxq->stats.vlan_ex++;
 }
 ret = napi_gro_frags(&rxq->rspq.napi);

 if (ret == GRO_HELD)
  rxq->stats.lro_pkts++;
 else if (ret == GRO_MERGED || ret == GRO_MERGED_FREE)
  rxq->stats.lro_merged++;
 rxq->stats.pkts++;
 rxq->stats.rx_cso++;
}
