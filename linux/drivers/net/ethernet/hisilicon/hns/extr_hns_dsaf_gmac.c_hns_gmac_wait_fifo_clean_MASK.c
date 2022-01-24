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
struct mac_driver {int /*<<< orphan*/  mac_id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  GMAC_FIFO_STATE_REG ; 
 int HNS_MAX_WAIT_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mac_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(void *mac_drv)
{
	struct mac_driver *drv = (struct mac_driver *)mac_drv;
	int wait_cnt;
	u32 val;

	wait_cnt = 0;
	while (wait_cnt++ < HNS_MAX_WAIT_CNT) {
		val = FUNC1(drv, GMAC_FIFO_STATE_REG);
		/* bit5~bit0 is not send complete pkts */
		if ((val & 0x3f) == 0)
			break;
		FUNC2(100, 200);
	}

	if (wait_cnt >= HNS_MAX_WAIT_CNT) {
		FUNC0(drv->dev,
			"hns ge %d fifo was not idle.\n", drv->mac_id);
		return -EBUSY;
	}

	return 0;
}