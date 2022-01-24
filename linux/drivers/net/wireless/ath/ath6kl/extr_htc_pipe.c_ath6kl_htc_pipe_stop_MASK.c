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
struct htc_target {int /*<<< orphan*/  htc_flags; struct htc_endpoint* endpoint; } ;
struct htc_endpoint {int dummy; } ;

/* Variables and functions */
 int ENDPOINT_MAX ; 
 int /*<<< orphan*/  HTC_OP_STATE_SETUP_COMPLETE ; 
 int /*<<< orphan*/  HTC_TX_PACKET_TAG_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct htc_target*,struct htc_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (struct htc_target*,struct htc_endpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct htc_target*) ; 

__attribute__((used)) static void FUNC3(struct htc_target *target)
{
	int i;
	struct htc_endpoint *ep;

	/* cleanup endpoints */
	for (i = 0; i < ENDPOINT_MAX; i++) {
		ep = &target->endpoint[i];
		FUNC0(target, ep);
		FUNC1(target, ep, HTC_TX_PACKET_TAG_ALL);
	}

	FUNC2(target);
	target->htc_flags &= ~HTC_OP_STATE_SETUP_COMPLETE;
}