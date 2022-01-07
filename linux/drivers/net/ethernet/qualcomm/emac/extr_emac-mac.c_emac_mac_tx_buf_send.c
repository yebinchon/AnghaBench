
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef int tpd ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int produce_idx; } ;
struct emac_tx_queue {int produce_shift; int produce_mask; scalar_t__ produce_reg; TYPE_1__ tpd; } ;
struct emac_tpd {int dummy; } ;
struct emac_adapter {scalar_t__ base; int netdev; } ;


 int EMAC_VLAN_TO_TAG (int ,int ) ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ MAX_SKB_FRAGS ;
 int NETDEV_TX_OK ;
 int TPD_CVLAN_TAG_SET (struct emac_tpd*,int ) ;
 int TPD_INSTC_SET (struct emac_tpd*,int) ;
 int TPD_TYP_SET (struct emac_tpd*,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int emac_reg_update32 (scalar_t__,int,int) ;
 scalar_t__ emac_tpd_num_free_descs (struct emac_tx_queue*) ;
 scalar_t__ emac_tso_csum (struct emac_adapter*,struct emac_tx_queue*,struct sk_buff*,struct emac_tpd*) ;
 int emac_tx_fill_tpd (struct emac_adapter*,struct emac_tx_queue*,struct sk_buff*,struct emac_tpd*) ;
 int memset (struct emac_tpd*,int ,int) ;
 int netdev_sent_queue (int ,int ) ;
 int netif_stop_queue (int ) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

int emac_mac_tx_buf_send(struct emac_adapter *adpt, struct emac_tx_queue *tx_q,
    struct sk_buff *skb)
{
 struct emac_tpd tpd;
 u32 prod_idx;

 memset(&tpd, 0, sizeof(tpd));

 if (emac_tso_csum(adpt, tx_q, skb, &tpd) != 0) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 if (skb_vlan_tag_present(skb)) {
  u16 tag;

  EMAC_VLAN_TO_TAG(skb_vlan_tag_get(skb), tag);
  TPD_CVLAN_TAG_SET(&tpd, tag);
  TPD_INSTC_SET(&tpd, 1);
 }

 if (skb_network_offset(skb) != ETH_HLEN)
  TPD_TYP_SET(&tpd, 1);

 emac_tx_fill_tpd(adpt, tx_q, skb, &tpd);

 netdev_sent_queue(adpt->netdev, skb->len);






 if (emac_tpd_num_free_descs(tx_q) < (MAX_SKB_FRAGS + 3))
  netif_stop_queue(adpt->netdev);


 prod_idx = (tx_q->tpd.produce_idx << tx_q->produce_shift) &
      tx_q->produce_mask;
 emac_reg_update32(adpt->base + tx_q->produce_reg,
     tx_q->produce_mask, prod_idx);

 return NETDEV_TX_OK;
}
