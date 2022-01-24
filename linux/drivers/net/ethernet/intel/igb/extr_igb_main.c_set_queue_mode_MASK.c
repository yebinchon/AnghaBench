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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  enum queue_mode { ____Placeholder_queue_mode } queue_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E1000_TQAVCC_QUEUEMODE ; 
 int QUEUE_MODE_STREAM_RESERVATION ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ e1000_i210 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw, int queue, enum queue_mode mode)
{
	u32 val;

	FUNC1(hw->mac.type != e1000_i210);
	FUNC1(queue < 0 || queue > 1);

	val = FUNC2(FUNC0(queue));

	if (mode == QUEUE_MODE_STREAM_RESERVATION)
		val |= E1000_TQAVCC_QUEUEMODE;
	else
		val &= ~E1000_TQAVCC_QUEUEMODE;

	FUNC3(FUNC0(queue), val);
}