
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct pdp_ctx {TYPE_1__ ms_addr_ip4; } ;
struct iphdr {scalar_t__ daddr; scalar_t__ saddr; } ;


 unsigned int GTP_ROLE_SGSN ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;

__attribute__((used)) static bool gtp_check_ms_ipv4(struct sk_buff *skb, struct pdp_ctx *pctx,
      unsigned int hdrlen, unsigned int role)
{
 struct iphdr *iph;

 if (!pskb_may_pull(skb, hdrlen + sizeof(struct iphdr)))
  return 0;

 iph = (struct iphdr *)(skb->data + hdrlen);

 if (role == GTP_ROLE_SGSN)
  return iph->daddr == pctx->ms_addr_ip4.s_addr;
 else
  return iph->saddr == pctx->ms_addr_ip4.s_addr;
}
