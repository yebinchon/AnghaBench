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
typedef  int /*<<< orphan*/  u64 ;
struct ksz_port_mib {size_t cnt_ptr; size_t mib_start; int /*<<< orphan*/ * counter; int /*<<< orphan*/  dropped; } ;
struct ksz_hw {size_t mib_cnt; struct ksz_port_mib* port_mib; } ;

/* Variables and functions */
 size_t PORT_COUNTER_NUM ; 
 int TOTAL_PORT_COUNTER_NUM ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ksz_hw *hw, int port)
{
	struct ksz_port_mib *mib = &hw->port_mib[port];

	mib->cnt_ptr = 0;
	if (mib->mib_start < PORT_COUNTER_NUM)
		do {
			FUNC1(hw, port, mib->cnt_ptr,
				&mib->counter[mib->cnt_ptr]);
			++mib->cnt_ptr;
		} while (mib->cnt_ptr < PORT_COUNTER_NUM);
	if (hw->mib_cnt > PORT_COUNTER_NUM)
		FUNC2(hw, port, mib->dropped,
			&mib->counter[PORT_COUNTER_NUM]);
	FUNC0((void *) mib->counter, 0, sizeof(u64) * TOTAL_PORT_COUNTER_NUM);
	mib->cnt_ptr = 0;
}