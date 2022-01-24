#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct gtp_pktinfo {TYPE_1__* pctx; void* gtph_port; } ;
struct TYPE_3__ {int gtp_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  GTP0_PORT ; 
 int /*<<< orphan*/  GTP1U_PORT ; 
#define  GTP_V0 129 
#define  GTP_V1 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb, struct gtp_pktinfo *pktinfo)
{
	switch (pktinfo->pctx->gtp_version) {
	case GTP_V0:
		pktinfo->gtph_port = FUNC2(GTP0_PORT);
		FUNC0(skb, pktinfo->pctx);
		break;
	case GTP_V1:
		pktinfo->gtph_port = FUNC2(GTP1U_PORT);
		FUNC1(skb, pktinfo->pctx);
		break;
	}
}