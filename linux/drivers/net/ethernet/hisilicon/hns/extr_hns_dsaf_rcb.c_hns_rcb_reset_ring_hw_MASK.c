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
typedef  scalar_t__ u32 ;
struct hnae_queue {int /*<<< orphan*/  handle; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  port_index; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ RCB_RESET_TRY_TIMES ; 
 scalar_t__ RCB_RESET_WAIT_TIMES ; 
 int /*<<< orphan*/  RCB_RING_COULD_BE_RST ; 
 int /*<<< orphan*/  RCB_RING_PREFETCH_EN_REG ; 
 int /*<<< orphan*/  RCB_RING_T0_BE_RST ; 
 int /*<<< orphan*/  RCB_RING_TX_RING_FBDNUM_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hnae_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae_queue*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(struct hnae_queue *q)
{
	u32 wait_cnt;
	u32 try_cnt = 0;
	u32 could_ret;

	u32 tx_fbd_num;

	while (try_cnt++ < RCB_RESET_TRY_TIMES) {
		FUNC5(100, 200);
		tx_fbd_num = FUNC1(q, RCB_RING_TX_RING_FBDNUM_REG);
		if (tx_fbd_num)
			continue;

		FUNC2(q, RCB_RING_PREFETCH_EN_REG, 0);

		FUNC2(q, RCB_RING_T0_BE_RST, 1);

		FUNC4(20);
		could_ret = FUNC1(q, RCB_RING_COULD_BE_RST);

		wait_cnt = 0;
		while (!could_ret && (wait_cnt < RCB_RESET_WAIT_TIMES)) {
			FUNC2(q, RCB_RING_T0_BE_RST, 0);

			FUNC2(q, RCB_RING_T0_BE_RST, 1);

			FUNC4(20);
			could_ret = FUNC1(q, RCB_RING_COULD_BE_RST);

			wait_cnt++;
		}

		FUNC2(q, RCB_RING_T0_BE_RST, 0);

		if (could_ret)
			break;
	}

	if (try_cnt >= RCB_RESET_TRY_TIMES)
		FUNC0(q->dev->dev, "port%d reset ring fail\n",
			FUNC3(q->handle)->port_index);
}