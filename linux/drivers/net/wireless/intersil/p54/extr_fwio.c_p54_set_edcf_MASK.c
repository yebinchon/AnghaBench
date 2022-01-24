#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct p54_edcf {int slottime; int sifs; int eofpad; int /*<<< orphan*/  queue; int /*<<< orphan*/  mapping; scalar_t__ flags; void* frameburst; void* round_trip_delay; } ;
struct p54_common {int coverage_class; int /*<<< orphan*/  qos_params; scalar_t__ use_short_slot; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  P54_CONTROL_TYPE_DCFINIT ; 
 int /*<<< orphan*/  P54_HDR_FLAG_CONTROL_OPSET ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC3 (struct p54_common*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct p54_common*,struct sk_buff*) ; 
 struct p54_edcf* FUNC5 (struct sk_buff*,int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct p54_common *priv)
{
	struct sk_buff *skb;
	struct p54_edcf *edcf;
	u8 rtd;

	skb = FUNC3(priv, P54_HDR_FLAG_CONTROL_OPSET, sizeof(*edcf),
			    P54_CONTROL_TYPE_DCFINIT, GFP_ATOMIC);
	if (FUNC6(!skb))
		return -ENOMEM;

	edcf = FUNC5(skb, sizeof(*edcf));
	if (priv->use_short_slot) {
		edcf->slottime = 9;
		edcf->sifs = 0x10;
		edcf->eofpad = 0x00;
	} else {
		edcf->slottime = 20;
		edcf->sifs = 0x0a;
		edcf->eofpad = 0x06;
	}
	/*
	 * calculate the extra round trip delay according to the
	 * formula from 802.11-2007 17.3.8.6.
	 */
	rtd = 3 * priv->coverage_class;
	edcf->slottime += rtd;
	edcf->round_trip_delay = FUNC0(rtd);
	/* (see prism54/isl_oid.h for further details) */
	edcf->frameburst = FUNC0(0);
	edcf->flags = 0;
	FUNC2(edcf->mapping, 0, sizeof(edcf->mapping));
	FUNC1(edcf->queue, priv->qos_params, sizeof(edcf->queue));
	FUNC4(priv, skb);
	return 0;
}