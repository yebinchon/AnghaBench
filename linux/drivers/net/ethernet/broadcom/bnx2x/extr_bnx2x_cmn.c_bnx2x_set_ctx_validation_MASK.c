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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {void* cdu_reserved; } ;
struct TYPE_3__ {void* cdu_usage; } ;
struct eth_context {TYPE_2__ xstorm_ag_context; TYPE_1__ ustorm_ag_context; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct eth_context*) ; 
 int /*<<< orphan*/  CDU_REGION_NUMBER_UCM_AG ; 
 int /*<<< orphan*/  CDU_REGION_NUMBER_XCM_AG ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_CONNECTION_TYPE ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 

void FUNC3(struct bnx2x *bp, struct eth_context *cxt,
			      u32 cid)
{
	if (!cxt) {
		FUNC0("bad context pointer %p\n", cxt);
		return;
	}

	/* ustorm cxt validation */
	cxt->ustorm_ag_context.cdu_usage =
		FUNC1(FUNC2(bp, cid),
			CDU_REGION_NUMBER_UCM_AG, ETH_CONNECTION_TYPE);
	/* xcontext validation */
	cxt->xstorm_ag_context.cdu_reserved =
		FUNC1(FUNC2(bp, cid),
			CDU_REGION_NUMBER_XCM_AG, ETH_CONNECTION_TYPE);
}