
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_3__ {int flow; int tid; } ;
struct TYPE_4__ {TYPE_1__ v0; } ;
struct pdp_ctx {TYPE_2__ u; int tx_seq; } ;
struct gtp0_header {int flags; int number; int* spare; int tid; void* flow; void* seq; void* length; int type; } ;


 int GTP_TPDU ;
 int atomic_inc_return (int *) ;
 int cpu_to_be64 (int ) ;
 void* htons (int) ;
 struct gtp0_header* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static inline void gtp0_push_header(struct sk_buff *skb, struct pdp_ctx *pctx)
{
 int payload_len = skb->len;
 struct gtp0_header *gtp0;

 gtp0 = skb_push(skb, sizeof(*gtp0));

 gtp0->flags = 0x1e;
 gtp0->type = GTP_TPDU;
 gtp0->length = htons(payload_len);
 gtp0->seq = htons((atomic_inc_return(&pctx->tx_seq) - 1) % 0xffff);
 gtp0->flow = htons(pctx->u.v0.flow);
 gtp0->number = 0xff;
 gtp0->spare[0] = gtp0->spare[1] = gtp0->spare[2] = 0xff;
 gtp0->tid = cpu_to_be64(pctx->u.v0.tid);
}
