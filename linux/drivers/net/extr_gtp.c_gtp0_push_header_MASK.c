#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; } ;
struct TYPE_3__ {int flow; int /*<<< orphan*/  tid; } ;
struct TYPE_4__ {TYPE_1__ v0; } ;
struct pdp_ctx {TYPE_2__ u; int /*<<< orphan*/  tx_seq; } ;
struct gtp0_header {int flags; int number; int* spare; int /*<<< orphan*/  tid; void* flow; void* seq; void* length; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GTP_TPDU ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 struct gtp0_header* FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static inline void FUNC4(struct sk_buff *skb, struct pdp_ctx *pctx)
{
	int payload_len = skb->len;
	struct gtp0_header *gtp0;

	gtp0 = FUNC3(skb, sizeof(*gtp0));

	gtp0->flags	= 0x1e; /* v0, GTP-non-prime. */
	gtp0->type	= GTP_TPDU;
	gtp0->length	= FUNC2(payload_len);
	gtp0->seq	= FUNC2((FUNC0(&pctx->tx_seq) - 1) % 0xffff);
	gtp0->flow	= FUNC2(pctx->u.v0.flow);
	gtp0->number	= 0xff;
	gtp0->spare[0]	= gtp0->spare[1] = gtp0->spare[2] = 0xff;
	gtp0->tid	= FUNC1(pctx->u.v0.tid);
}