
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;


 int NFP_FLOWER_CMSG_HLEN ;

__attribute__((used)) static inline int nfp_flower_cmsg_get_data_len(struct sk_buff *skb)
{
 return skb->len - NFP_FLOWER_CMSG_HLEN;
}
