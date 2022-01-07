
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le16 ;
typedef scalar_t__ __be16 ;


 int ETH_P_PAE ;
 scalar_t__ cpu_to_be16 (int ) ;
 scalar_t__ ieee80211_has_a4 (int ) ;
 int ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;

__attribute__((used)) static inline bool iwl_trace_data(struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (void *)skb->data;
 __le16 fc = hdr->frame_control;
 int offs = 24;

 if (!ieee80211_is_data(fc))
  return 0;







 if (ieee80211_has_a4(fc))
  offs += 6;
 if (ieee80211_is_data_qos(fc))
  offs += 2;



 offs += 6;

 return skb->len <= offs + 2 ||
  *(__be16 *)(skb->data + offs) != cpu_to_be16(ETH_P_PAE);
}
