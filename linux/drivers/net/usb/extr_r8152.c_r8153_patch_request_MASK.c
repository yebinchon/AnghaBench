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
typedef  int u16 ;
struct r8152 {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  OCP_PHY_PATCH_CMD ; 
 int /*<<< orphan*/  OCP_PHY_PATCH_STAT ; 
 int PATCH_READY ; 
 int PATCH_REQUEST ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct r8152 *tp, bool request)
{
	u16 data;
	int i;

	data = FUNC1(tp, OCP_PHY_PATCH_CMD);
	if (request)
		data |= PATCH_REQUEST;
	else
		data &= ~PATCH_REQUEST;
	FUNC2(tp, OCP_PHY_PATCH_CMD, data);

	for (i = 0; request && i < 5000; i++) {
		FUNC3(1000, 2000);
		if (FUNC1(tp, OCP_PHY_PATCH_STAT) & PATCH_READY)
			break;
	}

	if (request && !(FUNC1(tp, OCP_PHY_PATCH_STAT) & PATCH_READY)) {
		FUNC0(tp, drv, tp->netdev, "patch request fail\n");
		FUNC4(tp, false);
		return -ETIME;
	} else {
		return 0;
	}
}