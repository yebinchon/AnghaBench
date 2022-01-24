#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  tstamp; } ;
struct TYPE_2__ {int /*<<< orphan*/  drv_pkt_delay_max; } ;
struct mwifiex_private {int /*<<< orphan*/  adapter; TYPE_1__ wmm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

u8
FUNC4(struct mwifiex_private *priv,
				  const struct sk_buff *skb)
{
	u32 queue_delay = FUNC0(FUNC3(skb->tstamp));
	u8 ret_val;

	/*
	 * Queue delay is passed as a uint8 in units of 2ms (ms shifted
	 *  by 1). Min value (other than 0) is therefore 2ms, max is 510ms.
	 *
	 * Pass max value if queue_delay is beyond the uint8 range
	 */
	ret_val = (u8) (FUNC1(queue_delay, priv->wmm.drv_pkt_delay_max) >> 1);

	FUNC2(priv->adapter, DATA, "data: WMM: Pkt Delay: %d ms,\t"
		    "%d ms sent to FW\n", queue_delay, ret_val);

	return ret_val;
}