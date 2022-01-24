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
struct wcn36xx_hal_switch_channel_rsp_msg {int /*<<< orphan*/  status; int /*<<< orphan*/  channel_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,size_t) ; 

__attribute__((used)) static int FUNC2(void *buf, size_t len)
{
	struct wcn36xx_hal_switch_channel_rsp_msg *rsp;
	int ret;

	ret = FUNC1(buf, len);
	if (ret)
		return ret;
	rsp = (struct wcn36xx_hal_switch_channel_rsp_msg *)buf;
	FUNC0(WCN36XX_DBG_HAL, "channel switched to: %d, status: %d\n",
		    rsp->channel_number, rsp->status);
	return ret;
}