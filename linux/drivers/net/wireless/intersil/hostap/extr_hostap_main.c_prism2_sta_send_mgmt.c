
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {struct net_device* dev; scalar_t__ cb; } ;
struct net_device {int * dev_addr; } ;
struct hostap_skb_tx_data {int iface; int magic; } ;
struct hostap_ieee80211_mgmt {int bssid; int sa; int da; int frame_control; } ;
struct TYPE_3__ {struct net_device* dev; } ;
typedef TYPE_1__ local_info_t ;


 int ENOMEM ;
 int ETH_ALEN ;
 int HOSTAP_SKB_TX_DATA_MAGIC ;
 int IEEE80211_FTYPE_MGMT ;
 scalar_t__ IEEE80211_MGMT_HDR_LEN ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int memcpy (int ,int *,int ) ;
 int memset (struct hostap_skb_tx_data*,int ,int) ;
 int netdev_priv (struct net_device*) ;
 int skb_put_data (struct sk_buff*,int *,size_t) ;
 struct hostap_ieee80211_mgmt* skb_put_zero (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;

int prism2_sta_send_mgmt(local_info_t *local, u8 *dst, u16 stype,
    u8 *body, size_t bodylen)
{
 struct sk_buff *skb;
 struct hostap_ieee80211_mgmt *mgmt;
 struct hostap_skb_tx_data *meta;
 struct net_device *dev = local->dev;

 skb = dev_alloc_skb(IEEE80211_MGMT_HDR_LEN + bodylen);
 if (skb == ((void*)0))
  return -ENOMEM;

 mgmt = skb_put_zero(skb, IEEE80211_MGMT_HDR_LEN);
 mgmt->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT | stype);
 memcpy(mgmt->da, dst, ETH_ALEN);
 memcpy(mgmt->sa, dev->dev_addr, ETH_ALEN);
 memcpy(mgmt->bssid, dst, ETH_ALEN);
 if (body)
  skb_put_data(skb, body, bodylen);

 meta = (struct hostap_skb_tx_data *) skb->cb;
 memset(meta, 0, sizeof(*meta));
 meta->magic = HOSTAP_SKB_TX_DATA_MAGIC;
 meta->iface = netdev_priv(dev);

 skb->dev = dev;
 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);
 dev_queue_xmit(skb);

 return 0;
}
