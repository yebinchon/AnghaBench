
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct libipw_rx_stats {int dummy; } ;
struct libipw_hdr_4addr {int addr3; int addr1; int addr2; int frame_ctl; } ;
struct libipw_hdr_3addr {int dummy; } ;
struct libipw_device {int iw_mode; TYPE_2__* dev; int bssid; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_3__ {int rx_dropped; } ;
struct TYPE_4__ {int flags; TYPE_1__ stats; int dev_addr; } ;


 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FCTL_FTYPE ;
 int IEEE80211_FCTL_TODS ;
 int IEEE80211_FCTL_VERS ;



 int IFF_PROMISC ;


 int IW_MODE_MONITOR ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int ether_addr_equal (int ,int ) ;
 int is_multicast_ether_addr (int ) ;
 int le16_to_cpu (int ) ;
 int libipw_rx (struct libipw_device*,struct sk_buff*,struct libipw_rx_stats*) ;
 int libipw_rx_mgt (struct libipw_device*,struct libipw_hdr_4addr*,struct libipw_rx_stats*) ;

void libipw_rx_any(struct libipw_device *ieee,
       struct sk_buff *skb, struct libipw_rx_stats *stats)
{
 struct libipw_hdr_4addr *hdr;
 int is_packet_for_us;
 u16 fc;

 if (ieee->iw_mode == IW_MODE_MONITOR) {
  if (!libipw_rx(ieee, skb, stats))
   dev_kfree_skb_irq(skb);
  return;
 }

 if (skb->len < sizeof(struct ieee80211_hdr))
  goto drop_free;

 hdr = (struct libipw_hdr_4addr *)skb->data;
 fc = le16_to_cpu(hdr->frame_ctl);

 if ((fc & IEEE80211_FCTL_VERS) != 0)
  goto drop_free;

 switch (fc & IEEE80211_FCTL_FTYPE) {
 case 130:
  if (skb->len < sizeof(struct libipw_hdr_3addr))
   goto drop_free;
  libipw_rx_mgt(ieee, hdr, stats);
  dev_kfree_skb_irq(skb);
  return;
 case 131:
  break;
 case 132:
  return;
 default:
  return;
 }

 is_packet_for_us = 0;
 switch (ieee->iw_mode) {
 case 129:

  if (ether_addr_equal(hdr->addr3, ieee->bssid))
  if ((fc & (IEEE80211_FCTL_TODS+IEEE80211_FCTL_FROMDS)) == 0) {

   if (ieee->dev->flags & IFF_PROMISC)
    is_packet_for_us = 1;

   else if (ether_addr_equal(hdr->addr1, ieee->dev->dev_addr))
    is_packet_for_us = 1;

   else if (is_multicast_ether_addr(hdr->addr1))
    is_packet_for_us = 1;
  }
  break;
 case 128:

  if (ether_addr_equal(hdr->addr2, ieee->bssid))
  if ((fc & (IEEE80211_FCTL_TODS+IEEE80211_FCTL_FROMDS)) == IEEE80211_FCTL_FROMDS) {

   if (ieee->dev->flags & IFF_PROMISC)
    is_packet_for_us = 1;

   else if (ether_addr_equal(hdr->addr1, ieee->dev->dev_addr))
    is_packet_for_us = 1;

   else if (is_multicast_ether_addr(hdr->addr1)) {

    if (!ether_addr_equal(hdr->addr3, ieee->dev->dev_addr))
     is_packet_for_us = 1;
   }
  }
  break;
 default:

  break;
 }

 if (is_packet_for_us)
  if (!libipw_rx(ieee, skb, stats))
   dev_kfree_skb_irq(skb);
 return;

drop_free:
 dev_kfree_skb_irq(skb);
 ieee->dev->stats.rx_dropped++;
}
