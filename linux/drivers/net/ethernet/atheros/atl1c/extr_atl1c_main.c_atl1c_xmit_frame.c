
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct atl1c_tpd_desc {int word1; int vlan_tag; } ;
struct atl1c_adapter {int netdev; int flags; } ;
typedef int netdev_tx_t ;
typedef enum atl1c_trans_queue { ____Placeholder_atl1c_trans_queue } atl1c_trans_queue ;
typedef int __le16 ;


 int AT_VLAN_TO_TAG (scalar_t__,int ) ;
 scalar_t__ ETH_HLEN ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int TPD_ETH_TYPE_SHIFT ;
 int TPD_INS_VTAG_SHIFT ;
 int __AT_DOWN ;
 scalar_t__ atl1c_cal_tpd_req (struct sk_buff*) ;
 struct atl1c_tpd_desc* atl1c_get_tpd (struct atl1c_adapter*,int) ;
 scalar_t__ atl1c_tpd_avail (struct atl1c_adapter*,int) ;
 int atl1c_trans_normal ;
 scalar_t__ atl1c_tso_csum (struct atl1c_adapter*,struct sk_buff*,struct atl1c_tpd_desc**,int) ;
 scalar_t__ atl1c_tx_map (struct atl1c_adapter*,struct sk_buff*,struct atl1c_tpd_desc*,int) ;
 int atl1c_tx_queue (struct atl1c_adapter*,struct sk_buff*,struct atl1c_tpd_desc*,int) ;
 int atl1c_tx_rollback (struct atl1c_adapter*,struct atl1c_tpd_desc*,int) ;
 scalar_t__ cpu_to_le16 (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 int netdev_sent_queue (int ,int ) ;
 int netif_info (struct atl1c_adapter*,int ,int ,char*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_get (struct sk_buff*) ;
 int skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tx_done ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static netdev_tx_t atl1c_xmit_frame(struct sk_buff *skb,
       struct net_device *netdev)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 u16 tpd_req;
 struct atl1c_tpd_desc *tpd;
 enum atl1c_trans_queue type = atl1c_trans_normal;

 if (test_bit(__AT_DOWN, &adapter->flags)) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 tpd_req = atl1c_cal_tpd_req(skb);

 if (atl1c_tpd_avail(adapter, type) < tpd_req) {

  netif_stop_queue(netdev);
  return NETDEV_TX_BUSY;
 }

 tpd = atl1c_get_tpd(adapter, type);


 if (atl1c_tso_csum(adapter, skb, &tpd, type) != 0) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 if (unlikely(skb_vlan_tag_present(skb))) {
  u16 vlan = skb_vlan_tag_get(skb);
  __le16 tag;

  vlan = cpu_to_le16(vlan);
  AT_VLAN_TO_TAG(vlan, tag);
  tpd->word1 |= 1 << TPD_INS_VTAG_SHIFT;
  tpd->vlan_tag = tag;
 }

 if (skb_network_offset(skb) != ETH_HLEN)
  tpd->word1 |= 1 << TPD_ETH_TYPE_SHIFT;

 if (atl1c_tx_map(adapter, skb, tpd, type) < 0) {
  netif_info(adapter, tx_done, adapter->netdev,
      "tx-skb dropped due to dma error\n");

  atl1c_tx_rollback(adapter, tpd, type);
  dev_kfree_skb_any(skb);
 } else {
  netdev_sent_queue(adapter->netdev, skb->len);
  atl1c_tx_queue(adapter, skb, tpd, type);
 }

 return NETDEV_TX_OK;
}
