
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; } ;
struct pdp_ctx {int dummy; } ;



 int gtp_check_ms_ipv4 (struct sk_buff*,struct pdp_ctx*,unsigned int,unsigned int) ;
 int ntohs (int ) ;

__attribute__((used)) static bool gtp_check_ms(struct sk_buff *skb, struct pdp_ctx *pctx,
        unsigned int hdrlen, unsigned int role)
{
 switch (ntohs(skb->protocol)) {
 case 128:
  return gtp_check_ms_ipv4(skb, pctx, hdrlen, role);
 }
 return 0;
}
