
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct brcmf_skb_reorder_data {int reorder; } ;



__attribute__((used)) static inline bool brcmf_proto_is_reorder_skb(struct sk_buff *skb)
{
 struct brcmf_skb_reorder_data *rd;

 rd = (struct brcmf_skb_reorder_data *)skb->cb;
 return !!rd->reorder;
}
