
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u16 ;
struct wireless_dev {int netdev; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mwifiex_txinfo {scalar_t__ pkt_len; int bss_type; int bss_num; } ;
struct mwifiex_private {int adapter; int bss_type; int bss_num; } ;
struct ieee80211_mgmt {int frame_control; } ;
struct cfg80211_mgmt_tx_params {size_t len; int * buf; } ;
typedef int pkt_len ;


 int EFAULT ;
 int ENOMEM ;
 int ERROR ;
 scalar_t__ ETH_ALEN ;
 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 int GFP_ATOMIC ;
 int INFO ;
 scalar_t__ MWIFIEX_BSS_ROLE_STA ;
 int MWIFIEX_BUF_FLAG_ACTION_TX_STATUS ;
 scalar_t__ MWIFIEX_MGMT_FRAME_HEADER_SIZE ;
 scalar_t__ MWIFIEX_MIN_DATA_HEADER_LEN ;
 struct mwifiex_txinfo* MWIFIEX_SKB_TXCB (struct sk_buff*) ;
 int cfg80211_mgmt_tx_status (struct wireless_dev*,int,int const*,size_t,int,int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 int memset (struct mwifiex_txinfo*,int ,int) ;
 struct sk_buff* mwifiex_clone_skb_for_tx_status (struct mwifiex_private*,struct sk_buff*,int ,int*) ;
 int mwifiex_dbg (int ,int ,char*) ;
 int mwifiex_form_mgmt_frame (struct sk_buff*,int const*,size_t) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (int ) ;
 int mwifiex_queue_tx_pkt (struct mwifiex_private*,struct sk_buff*) ;
 int prandom_u32 () ;

__attribute__((used)) static int
mwifiex_cfg80211_mgmt_tx(struct wiphy *wiphy, struct wireless_dev *wdev,
    struct cfg80211_mgmt_tx_params *params, u64 *cookie)
{
 const u8 *buf = params->buf;
 size_t len = params->len;
 struct sk_buff *skb;
 u16 pkt_len;
 const struct ieee80211_mgmt *mgmt;
 struct mwifiex_txinfo *tx_info;
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(wdev->netdev);

 if (!buf || !len) {
  mwifiex_dbg(priv->adapter, ERROR, "invalid buffer and length\n");
  return -EFAULT;
 }

 mgmt = (const struct ieee80211_mgmt *)buf;
 if (GET_BSS_ROLE(priv) != MWIFIEX_BSS_ROLE_STA &&
     ieee80211_is_probe_resp(mgmt->frame_control)) {


  mwifiex_dbg(priv->adapter, INFO,
       "info: skip to send probe resp in AP or GO mode\n");
  return 0;
 }

 pkt_len = len + ETH_ALEN;
 skb = dev_alloc_skb(MWIFIEX_MIN_DATA_HEADER_LEN +
       MWIFIEX_MGMT_FRAME_HEADER_SIZE +
       pkt_len + sizeof(pkt_len));

 if (!skb) {
  mwifiex_dbg(priv->adapter, ERROR,
       "allocate skb failed for management frame\n");
  return -ENOMEM;
 }

 tx_info = MWIFIEX_SKB_TXCB(skb);
 memset(tx_info, 0, sizeof(*tx_info));
 tx_info->bss_num = priv->bss_num;
 tx_info->bss_type = priv->bss_type;
 tx_info->pkt_len = pkt_len;

 mwifiex_form_mgmt_frame(skb, buf, len);
 *cookie = prandom_u32() | 1;

 if (ieee80211_is_action(mgmt->frame_control))
  skb = mwifiex_clone_skb_for_tx_status(priv,
            skb,
    MWIFIEX_BUF_FLAG_ACTION_TX_STATUS, cookie);
 else
  cfg80211_mgmt_tx_status(wdev, *cookie, buf, len, 1,
     GFP_ATOMIC);

 mwifiex_queue_tx_pkt(priv, skb);

 mwifiex_dbg(priv->adapter, INFO, "info: management frame transmitted\n");
 return 0;
}
