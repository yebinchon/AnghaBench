
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {size_t len; int* data; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ cfg80211_find_vendor_ie (unsigned int,int,int*,size_t) ;
 int memmove (int*,int const*,int) ;
 int skb_trim (struct sk_buff*,size_t) ;

__attribute__((used)) static int ath10k_mac_remove_vendor_ie(struct sk_buff *skb, unsigned int oui,
           u8 oui_type, size_t ie_offset)
{
 size_t len;
 const u8 *next;
 const u8 *end;
 u8 *ie;

 if (WARN_ON(skb->len < ie_offset))
  return -EINVAL;

 ie = (u8 *)cfg80211_find_vendor_ie(oui, oui_type,
        skb->data + ie_offset,
        skb->len - ie_offset);
 if (!ie)
  return -ENOENT;

 len = ie[1] + 2;
 end = skb->data + skb->len;
 next = ie + len;

 if (WARN_ON(next > end))
  return -EINVAL;

 memmove(ie, next, end - next);
 skb_trim(skb, skb->len - len);

 return 0;
}
