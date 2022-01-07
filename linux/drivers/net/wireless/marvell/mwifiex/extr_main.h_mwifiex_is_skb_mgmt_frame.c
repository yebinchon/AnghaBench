
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;


 scalar_t__ PKT_TYPE_MGMT ;
 scalar_t__ get_unaligned_le32 (int ) ;

__attribute__((used)) static inline bool mwifiex_is_skb_mgmt_frame(struct sk_buff *skb)
{
 return (get_unaligned_le32(skb->data) == PKT_TYPE_MGMT);
}
