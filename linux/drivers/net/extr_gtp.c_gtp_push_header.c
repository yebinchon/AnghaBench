
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct gtp_pktinfo {TYPE_1__* pctx; void* gtph_port; } ;
struct TYPE_3__ {int gtp_version; } ;


 int GTP0_PORT ;
 int GTP1U_PORT ;


 int gtp0_push_header (struct sk_buff*,TYPE_1__*) ;
 int gtp1_push_header (struct sk_buff*,TYPE_1__*) ;
 void* htons (int ) ;

__attribute__((used)) static void gtp_push_header(struct sk_buff *skb, struct gtp_pktinfo *pktinfo)
{
 switch (pktinfo->pctx->gtp_version) {
 case 129:
  pktinfo->gtph_port = htons(GTP0_PORT);
  gtp0_push_header(skb, pktinfo->pctx);
  break;
 case 128:
  pktinfo->gtph_port = htons(GTP1U_PORT);
  gtp1_push_header(skb, pktinfo->pctx);
  break;
 }
}
