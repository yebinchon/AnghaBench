
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct mt76_wcid {int * rx_key_pn; int rx_check_pn; } ;
struct mt76_rx_status {int flag; size_t tid; int iv; struct mt76_wcid* wcid; } ;
struct ieee80211_hdr {int frame_control; } ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_PN_VALIDATED ;
 int ieee80211_is_first_frag (int ) ;
 scalar_t__ ieee80211_is_frag (struct ieee80211_hdr*) ;
 int memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
mt76_check_ccmp_pn(struct sk_buff *skb)
{
 struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
 struct mt76_wcid *wcid = status->wcid;
 struct ieee80211_hdr *hdr;
 int ret;

 if (!(status->flag & RX_FLAG_DECRYPTED))
  return 0;

 if (!wcid || !wcid->rx_check_pn)
  return 0;

 if (!(status->flag & RX_FLAG_IV_STRIPPED)) {




  hdr = (struct ieee80211_hdr *)skb->data;
  if (ieee80211_is_frag(hdr) &&
      !ieee80211_is_first_frag(hdr->frame_control))
   return 0;
 }

 BUILD_BUG_ON(sizeof(status->iv) != sizeof(wcid->rx_key_pn[0]));
 ret = memcmp(status->iv, wcid->rx_key_pn[status->tid],
       sizeof(status->iv));
 if (ret <= 0)
  return -EINVAL;

 memcpy(wcid->rx_key_pn[status->tid], status->iv, sizeof(status->iv));

 if (status->flag & RX_FLAG_IV_STRIPPED)
  status->flag |= RX_FLAG_PN_VALIDATED;

 return 0;
}
