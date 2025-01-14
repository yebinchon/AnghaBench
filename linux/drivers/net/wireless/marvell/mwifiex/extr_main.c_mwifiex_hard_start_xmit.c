
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int data; scalar_t__ sk; } ;
struct net_device {int dummy; } ;
struct mwifiex_txinfo {scalar_t__ bss_type; scalar_t__ pkt_len; int bss_num; } ;
struct TYPE_4__ {int tx_dropped; } ;
struct mwifiex_private {scalar_t__ bss_type; scalar_t__ check_tdls_tx; TYPE_3__* adapter; int cfg_bssid; int bss_num; TYPE_1__ stats; } ;
typedef int netdev_tx_t ;
struct TYPE_6__ {scalar_t__ fw_api_ver; scalar_t__ auto_tdls; int fw_cap_info; int work_flags; } ;
struct TYPE_5__ {int tx_flags; } ;


 int DATA ;
 int ERROR ;
 scalar_t__ ETH_FRAME_LEN ;
 int INFO ;
 scalar_t__ ISSUPP_TDLS_ENABLED (int ) ;
 scalar_t__ MWIFIEX_BSS_TYPE_STA ;
 int MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS ;
 scalar_t__ MWIFIEX_FW_V15 ;
 scalar_t__ MWIFIEX_MIN_DATA_HEADER_LEN ;
 struct mwifiex_txinfo* MWIFIEX_SKB_TXCB (struct sk_buff*) ;
 int MWIFIEX_SURPRISE_REMOVED ;
 int SKBTX_WIFI_STATUS ;
 int __net_timestamp (struct sk_buff*) ;
 int ether_addr_equal_unaligned (int ,int ) ;
 int is_multicast_ether_addr (int ) ;
 int jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct mwifiex_txinfo*,int ,int) ;
 struct sk_buff* mwifiex_clone_skb_for_tx_status (struct mwifiex_private*,struct sk_buff*,int ,int *) ;
 int mwifiex_dbg (TYPE_3__*,int ,char*,...) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_queue_tx_pkt (struct mwifiex_private*,struct sk_buff*) ;
 int mwifiex_tdls_check_tx (struct mwifiex_private*,struct sk_buff*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,scalar_t__) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t
mwifiex_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);
 struct sk_buff *new_skb;
 struct mwifiex_txinfo *tx_info;
 bool multicast;

 mwifiex_dbg(priv->adapter, DATA,
      "data: %lu BSS(%d-%d): Data <= kernel\n",
      jiffies, priv->bss_type, priv->bss_num);

 if (test_bit(MWIFIEX_SURPRISE_REMOVED, &priv->adapter->work_flags)) {
  kfree_skb(skb);
  priv->stats.tx_dropped++;
  return 0;
 }
 if (!skb->len || (skb->len > ETH_FRAME_LEN)) {
  mwifiex_dbg(priv->adapter, ERROR,
       "Tx: bad skb len %d\n", skb->len);
  kfree_skb(skb);
  priv->stats.tx_dropped++;
  return 0;
 }
 if (skb_headroom(skb) < MWIFIEX_MIN_DATA_HEADER_LEN) {
  mwifiex_dbg(priv->adapter, DATA,
       "data: Tx: insufficient skb headroom %d\n",
       skb_headroom(skb));

  new_skb =
   skb_realloc_headroom(skb, MWIFIEX_MIN_DATA_HEADER_LEN);
  if (unlikely(!new_skb)) {
   mwifiex_dbg(priv->adapter, ERROR,
        "Tx: cannot alloca new_skb\n");
   kfree_skb(skb);
   priv->stats.tx_dropped++;
   return 0;
  }
  kfree_skb(skb);
  skb = new_skb;
  mwifiex_dbg(priv->adapter, INFO,
       "info: new skb headroomd %d\n",
       skb_headroom(skb));
 }

 tx_info = MWIFIEX_SKB_TXCB(skb);
 memset(tx_info, 0, sizeof(*tx_info));
 tx_info->bss_num = priv->bss_num;
 tx_info->bss_type = priv->bss_type;
 tx_info->pkt_len = skb->len;

 multicast = is_multicast_ether_addr(skb->data);

 if (unlikely(!multicast && skb->sk &&
       skb_shinfo(skb)->tx_flags & SKBTX_WIFI_STATUS &&
       priv->adapter->fw_api_ver == MWIFIEX_FW_V15))
  skb = mwifiex_clone_skb_for_tx_status(priv,
            skb,
     MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS, ((void*)0));
 __net_timestamp(skb);

 if (ISSUPP_TDLS_ENABLED(priv->adapter->fw_cap_info) &&
     priv->bss_type == MWIFIEX_BSS_TYPE_STA &&
     !ether_addr_equal_unaligned(priv->cfg_bssid, skb->data)) {
  if (priv->adapter->auto_tdls && priv->check_tdls_tx)
   mwifiex_tdls_check_tx(priv, skb);
 }

 mwifiex_queue_tx_pkt(priv, skb);

 return 0;
}
