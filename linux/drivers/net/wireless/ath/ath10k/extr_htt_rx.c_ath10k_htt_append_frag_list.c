
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int data_len; unsigned int len; } ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;


 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline void ath10k_htt_append_frag_list(struct sk_buff *skb_head,
            struct sk_buff *frag_list,
            unsigned int frag_len)
{
 skb_shinfo(skb_head)->frag_list = frag_list;
 skb_head->data_len = frag_len;
 skb_head->len += skb_head->data_len;
}
