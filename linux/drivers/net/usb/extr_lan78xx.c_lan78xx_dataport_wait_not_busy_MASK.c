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
typedef  int u32 ;
struct lan78xx_net {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_SEL ; 
 int DP_SEL_DPRDY_ ; 
 int EIO ; 
 int FUNC0 (struct lan78xx_net*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct lan78xx_net *dev)
{
	int i, ret;

	for (i = 0; i < 100; i++) {
		u32 dp_sel;

		ret = FUNC0(dev, DP_SEL, &dp_sel);
		if (FUNC2(ret < 0))
			return -EIO;

		if (dp_sel & DP_SEL_DPRDY_)
			return 0;

		FUNC3(40, 100);
	}

	FUNC1(dev->net, "lan78xx_dataport_wait_not_busy timed out");

	return -EIO;
}