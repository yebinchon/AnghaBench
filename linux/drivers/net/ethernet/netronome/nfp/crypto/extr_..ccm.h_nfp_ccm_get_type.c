
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfp_ccm_hdr {int type; } ;



__attribute__((used)) static inline u8 nfp_ccm_get_type(struct sk_buff *skb)
{
 struct nfp_ccm_hdr *hdr;

 hdr = (struct nfp_ccm_hdr *)skb->data;

 return hdr->type;
}
