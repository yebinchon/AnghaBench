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
struct wcn36xx_hal_join_rsp_msg {int /*<<< orphan*/  tx_mgmt_power; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,size_t) ; 

__attribute__((used)) static int FUNC2(void *buf, size_t len)
{
	struct wcn36xx_hal_join_rsp_msg *rsp;

	if (FUNC1(buf, len))
		return -EIO;

	rsp = (struct wcn36xx_hal_join_rsp_msg *)buf;

	FUNC0(WCN36XX_DBG_HAL,
		    "hal rsp join status %d tx_mgmt_power %d\n",
		    rsp->status, rsp->tx_mgmt_power);

	return 0;
}