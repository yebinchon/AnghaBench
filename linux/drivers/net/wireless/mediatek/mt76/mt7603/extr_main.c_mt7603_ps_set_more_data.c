
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * data; } ;
struct ieee80211_hdr {int frame_control; } ;


 int IEEE80211_FCTL_MOREDATA ;
 size_t MT_TXD_SIZE ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void
mt7603_ps_set_more_data(struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr;

 hdr = (struct ieee80211_hdr *)&skb->data[MT_TXD_SIZE];
 hdr->frame_control |= cpu_to_le16(IEEE80211_FCTL_MOREDATA);
}
