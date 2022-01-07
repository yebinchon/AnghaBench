
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nfp_ccm_hdr {int tag; } ;
typedef int __be16 ;



__attribute__((used)) static inline __be16 __nfp_ccm_get_tag(struct sk_buff *skb)
{
 struct nfp_ccm_hdr *hdr;

 hdr = (struct nfp_ccm_hdr *)skb->data;

 return hdr->tag;
}
