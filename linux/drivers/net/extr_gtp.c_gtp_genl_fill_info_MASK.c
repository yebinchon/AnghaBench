#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int i_tei; int o_tei; } ;
struct TYPE_8__ {int /*<<< orphan*/  flow; int /*<<< orphan*/  tid; } ;
struct TYPE_10__ {TYPE_4__ v1; TYPE_3__ v0; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct pdp_ctx {int gtp_version; TYPE_5__ u; TYPE_2__ ms_addr_ip4; TYPE_1__ peer_addr_ip4; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  GTPA_FLOW ; 
 int /*<<< orphan*/  GTPA_I_TEI ; 
 int /*<<< orphan*/  GTPA_MS_ADDRESS ; 
 int /*<<< orphan*/  GTPA_O_TEI ; 
 int /*<<< orphan*/  GTPA_PAD ; 
 int /*<<< orphan*/  GTPA_PEER_ADDRESS ; 
 int /*<<< orphan*/  GTPA_TID ; 
 int /*<<< orphan*/  GTPA_VERSION ; 
#define  GTP_V0 129 
#define  GTP_V1 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gtp_genl_family ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, u32 snd_portid, u32 snd_seq,
			      u32 type, struct pdp_ctx *pctx)
{
	void *genlh;

	genlh = FUNC2(skb, snd_portid, snd_seq, &gtp_genl_family, 0,
			    type);
	if (genlh == NULL)
		goto nlmsg_failure;

	if (FUNC5(skb, GTPA_VERSION, pctx->gtp_version) ||
	    FUNC3(skb, GTPA_PEER_ADDRESS, pctx->peer_addr_ip4.s_addr) ||
	    FUNC3(skb, GTPA_MS_ADDRESS, pctx->ms_addr_ip4.s_addr))
		goto nla_put_failure;

	switch (pctx->gtp_version) {
	case GTP_V0:
		if (FUNC6(skb, GTPA_TID, pctx->u.v0.tid, GTPA_PAD) ||
		    FUNC4(skb, GTPA_FLOW, pctx->u.v0.flow))
			goto nla_put_failure;
		break;
	case GTP_V1:
		if (FUNC5(skb, GTPA_I_TEI, pctx->u.v1.i_tei) ||
		    FUNC5(skb, GTPA_O_TEI, pctx->u.v1.o_tei))
			goto nla_put_failure;
		break;
	}
	FUNC1(skb, genlh);
	return 0;

nlmsg_failure:
nla_put_failure:
	FUNC0(skb, genlh);
	return -EMSGSIZE;
}