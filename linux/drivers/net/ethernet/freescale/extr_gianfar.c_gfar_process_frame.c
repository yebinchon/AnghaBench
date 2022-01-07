
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rxfcb {int vlctl; int flags; } ;
struct net_device {int features; } ;
struct gfar_private {scalar_t__ padding; scalar_t__ hwts_rx_en; scalar_t__ uses_rxfcb; } ;


 scalar_t__ ETH_FCS_LEN ;
 int ETH_P_8021Q ;
 scalar_t__ GMAC_FCB_LEN ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;
 int RXFCB_VLN ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int gfar_rx_checksum (struct sk_buff*,struct rxfcb*) ;
 int htons (int ) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int ns_to_ktime (int ) ;
 int pskb_trim (struct sk_buff*,scalar_t__) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void gfar_process_frame(struct net_device *ndev, struct sk_buff *skb)
{
 struct gfar_private *priv = netdev_priv(ndev);
 struct rxfcb *fcb = ((void*)0);


 fcb = (struct rxfcb *)skb->data;




 if (priv->uses_rxfcb)
  skb_pull(skb, GMAC_FCB_LEN);


 if (priv->hwts_rx_en) {
  struct skb_shared_hwtstamps *shhwtstamps = skb_hwtstamps(skb);
  u64 *ns = (u64 *) skb->data;

  memset(shhwtstamps, 0, sizeof(*shhwtstamps));
  shhwtstamps->hwtstamp = ns_to_ktime(be64_to_cpu(*ns));
 }

 if (priv->padding)
  skb_pull(skb, priv->padding);


 pskb_trim(skb, skb->len - ETH_FCS_LEN);

 if (ndev->features & NETIF_F_RXCSUM)
  gfar_rx_checksum(skb, fcb);





 if (ndev->features & NETIF_F_HW_VLAN_CTAG_RX &&
     be16_to_cpu(fcb->flags) & RXFCB_VLN)
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
           be16_to_cpu(fcb->vlctl));
}
