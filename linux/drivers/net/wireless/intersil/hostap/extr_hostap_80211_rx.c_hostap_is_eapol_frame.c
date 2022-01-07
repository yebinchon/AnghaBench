
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int* data; } ;
struct net_device {int dev_addr; } ;
struct ieee80211_hdr {int addr1; int addr3; int frame_control; } ;
struct TYPE_3__ {struct net_device* dev; } ;
typedef TYPE_1__ local_info_t ;


 int ETH_P_PAE ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_TODS ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int hostap_is_eapol_frame(local_info_t *local, struct sk_buff *skb)
{
 struct net_device *dev = local->dev;
 u16 fc, ethertype;
 struct ieee80211_hdr *hdr;
 u8 *pos;

 if (skb->len < 24)
  return 0;

 hdr = (struct ieee80211_hdr *) skb->data;
 fc = le16_to_cpu(hdr->frame_control);


 if ((fc & (IEEE80211_FCTL_TODS | IEEE80211_FCTL_FROMDS)) ==
     IEEE80211_FCTL_TODS &&
     ether_addr_equal(hdr->addr1, dev->dev_addr) &&
     ether_addr_equal(hdr->addr3, dev->dev_addr)) {

 } else if ((fc & (IEEE80211_FCTL_TODS | IEEE80211_FCTL_FROMDS)) ==
     IEEE80211_FCTL_FROMDS &&
     ether_addr_equal(hdr->addr1, dev->dev_addr)) {

 } else
  return 0;

 if (skb->len < 24 + 8)
  return 0;


 pos = skb->data + 24;
 ethertype = (pos[6] << 8) | pos[7];
 if (ethertype == ETH_P_PAE)
  return 1;

 return 0;
}
