
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; int dev; } ;
struct cpsw_priv {size_t emac_port; struct cpsw_common* cpsw; } ;
struct TYPE_3__ {scalar_t__ dual_emac; } ;
struct cpsw_common {TYPE_2__* slaves; TYPE_1__ data; } ;
struct TYPE_4__ {int port_vlan; } ;


 int CPSW_RX_VLAN_ENCAP_HDR_PKT_PRIO_TAG ;
 int CPSW_RX_VLAN_ENCAP_HDR_PKT_RESERV ;
 int CPSW_RX_VLAN_ENCAP_HDR_PKT_TYPE_MSK ;
 int CPSW_RX_VLAN_ENCAP_HDR_PKT_TYPE_SHIFT ;
 int CPSW_RX_VLAN_ENCAP_HDR_PKT_VLAN_TAG ;
 int CPSW_RX_VLAN_ENCAP_HDR_PRIO_MSK ;
 int CPSW_RX_VLAN_ENCAP_HDR_PRIO_SHIFT ;
 scalar_t__ CPSW_RX_VLAN_ENCAP_HDR_SIZE ;
 int CPSW_RX_VLAN_ENCAP_HDR_VID_SHIFT ;
 int ETH_ALEN ;
 int ETH_P_8021Q ;
 scalar_t__ VLAN_HLEN ;
 int VLAN_PRIO_SHIFT ;
 int VLAN_VID_MASK ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int htons (int ) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 struct cpsw_priv* netdev_priv (int ) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void cpsw_rx_vlan_encap(struct sk_buff *skb)
{
 struct cpsw_priv *priv = netdev_priv(skb->dev);
 struct cpsw_common *cpsw = priv->cpsw;
 u32 rx_vlan_encap_hdr = *((u32 *)skb->data);
 u16 vtag, vid, prio, pkt_type;


 skb_pull(skb, CPSW_RX_VLAN_ENCAP_HDR_SIZE);

 pkt_type = (rx_vlan_encap_hdr >>
      CPSW_RX_VLAN_ENCAP_HDR_PKT_TYPE_SHIFT) &
      CPSW_RX_VLAN_ENCAP_HDR_PKT_TYPE_MSK;

 if (pkt_type == CPSW_RX_VLAN_ENCAP_HDR_PKT_RESERV ||
     pkt_type == CPSW_RX_VLAN_ENCAP_HDR_PKT_PRIO_TAG)
  return;

 vid = (rx_vlan_encap_hdr >>
        CPSW_RX_VLAN_ENCAP_HDR_VID_SHIFT) &
        VLAN_VID_MASK;

 if (!vid)
  return;

 if (cpsw->data.dual_emac &&
     vid == cpsw->slaves[priv->emac_port].port_vlan)
  return;

 prio = (rx_vlan_encap_hdr >>
  CPSW_RX_VLAN_ENCAP_HDR_PRIO_SHIFT) &
  CPSW_RX_VLAN_ENCAP_HDR_PRIO_MSK;

 vtag = (prio << VLAN_PRIO_SHIFT) | vid;
 __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vtag);


 if (pkt_type == CPSW_RX_VLAN_ENCAP_HDR_PKT_VLAN_TAG) {
  memmove(skb->data + VLAN_HLEN, skb->data, 2 * ETH_ALEN);
  skb_pull(skb, VLAN_HLEN);
 }
}
