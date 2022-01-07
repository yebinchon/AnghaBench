
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_3__ {int o_tei; } ;
struct TYPE_4__ {TYPE_1__ v1; } ;
struct pdp_ctx {TYPE_2__ u; } ;
struct gtp1_header {int flags; int tid; int length; int type; } ;


 int GTP_TPDU ;
 int htonl (int ) ;
 int htons (int) ;
 struct gtp1_header* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static inline void gtp1_push_header(struct sk_buff *skb, struct pdp_ctx *pctx)
{
 int payload_len = skb->len;
 struct gtp1_header *gtp1;

 gtp1 = skb_push(skb, sizeof(*gtp1));







 gtp1->flags = 0x30;
 gtp1->type = GTP_TPDU;
 gtp1->length = htons(payload_len);
 gtp1->tid = htonl(pctx->u.v1.o_tei);




}
