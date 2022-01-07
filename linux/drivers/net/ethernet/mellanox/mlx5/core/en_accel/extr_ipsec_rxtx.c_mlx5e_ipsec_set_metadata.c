
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfrm_offload {int proto; } ;
struct tcphdr {int seq; int dest; int source; } ;
struct sk_buff {int dev; int len; int inner_transport_header; int inner_network_header; int transport_header; int network_header; } ;
struct TYPE_4__ {int seq; int mss_inv; int esp_next_proto; } ;
struct TYPE_5__ {TYPE_1__ tx; } ;
struct mlx5e_ipsec_metadata {TYPE_2__ content; int syndrome; } ;
struct ip_esp_hdr {int seq_no; } ;
struct TYPE_6__ {int gso_size; } ;


 int MLX5E_IPSEC_TX_SYNDROME_OFFLOAD ;
 int MLX5E_IPSEC_TX_SYNDROME_OFFLOAD_WITH_LSO_TCP ;
 int htons (int) ;
 struct tcphdr* inner_tcp_hdr (struct sk_buff*) ;
 struct ip_esp_hdr* ip_esp_hdr (struct sk_buff*) ;
 int mlx5e_ipsec_mss_inv (struct sk_buff*) ;
 int netdev_dbg (int ,char*,int ,int ,int ,int ,...) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void mlx5e_ipsec_set_metadata(struct sk_buff *skb,
         struct mlx5e_ipsec_metadata *mdata,
         struct xfrm_offload *xo)
{
 struct ip_esp_hdr *esph;
 struct tcphdr *tcph;

 if (skb_is_gso(skb)) {

  esph = ip_esp_hdr(skb);
  tcph = inner_tcp_hdr(skb);
  netdev_dbg(skb->dev, "   Offloading GSO packet outer L3 %u; L4 %u; Inner L3 %u; L4 %u\n",
      skb->network_header,
      skb->transport_header,
      skb->inner_network_header,
      skb->inner_transport_header);
  netdev_dbg(skb->dev, "   Offloading GSO packet of len %u; mss %u; TCP sp %u dp %u seq 0x%x ESP seq 0x%x\n",
      skb->len, skb_shinfo(skb)->gso_size,
      ntohs(tcph->source), ntohs(tcph->dest),
      ntohl(tcph->seq), ntohl(esph->seq_no));
  mdata->syndrome = MLX5E_IPSEC_TX_SYNDROME_OFFLOAD_WITH_LSO_TCP;
  mdata->content.tx.mss_inv = mlx5e_ipsec_mss_inv(skb);
  mdata->content.tx.seq = htons(ntohl(tcph->seq) & 0xFFFF);
 } else {
  mdata->syndrome = MLX5E_IPSEC_TX_SYNDROME_OFFLOAD;
 }
 mdata->content.tx.esp_next_proto = xo->proto;

 netdev_dbg(skb->dev, "   TX metadata syndrome %u proto %u mss_inv %04x seq %04x\n",
     mdata->syndrome, mdata->content.tx.esp_next_proto,
     ntohs(mdata->content.tx.mss_inv),
     ntohs(mdata->content.tx.seq));
}
