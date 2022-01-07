
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nfp_flower_cmsg_hdr {int dummy; } ;



__attribute__((used)) static struct nfp_flower_cmsg_hdr *
nfp_flower_cmsg_get_hdr(struct sk_buff *skb)
{
 return (struct nfp_flower_cmsg_hdr *)skb->data;
}
