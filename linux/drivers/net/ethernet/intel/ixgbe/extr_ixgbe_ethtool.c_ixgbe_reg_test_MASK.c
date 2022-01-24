#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct ixgbe_reg_test {scalar_t__ reg; scalar_t__ array_len; int test_type; scalar_t__ write; int /*<<< orphan*/  mask; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {TYPE_1__ mac; int /*<<< orphan*/  hw_addr; } ;
struct ixgbe_adapter {TYPE_2__ hw; } ;

/* Variables and functions */
 scalar_t__ IXGBE_STATUS ; 
#define  PATTERN_TEST 139 
#define  SET_READ_TEST 138 
#define  TABLE32_TEST 137 
#define  TABLE64_TEST_HI 136 
#define  TABLE64_TEST_LO 135 
#define  WRITE_NO_TEST 134 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
#define  ixgbe_mac_82598EB 133 
#define  ixgbe_mac_82599EB 132 
#define  ixgbe_mac_X540 131 
#define  ixgbe_mac_X550 130 
#define  ixgbe_mac_X550EM_x 129 
#define  ixgbe_mac_x550em_a 128 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int FUNC4 (struct ixgbe_adapter*,int*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (struct ixgbe_adapter*,int*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ixgbe_reg_test* reg_test_82598 ; 
 struct ixgbe_reg_test* reg_test_82599 ; 

__attribute__((used)) static int FUNC6(struct ixgbe_adapter *adapter, u64 *data)
{
	const struct ixgbe_reg_test *test;
	u32 value, before, after;
	u32 i, toggle;

	if (FUNC2(adapter->hw.hw_addr)) {
		FUNC0(drv, "Adapter removed - register test blocked\n");
		*data = 1;
		return 1;
	}
	switch (adapter->hw.mac.type) {
	case ixgbe_mac_82598EB:
		toggle = 0x7FFFF3FF;
		test = reg_test_82598;
		break;
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
	case ixgbe_mac_X550:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_x550em_a:
		toggle = 0x7FFFF30F;
		test = reg_test_82599;
		break;
	default:
		*data = 1;
		return 1;
	}

	/*
	 * Because the status register is such a special case,
	 * we handle it separately from the rest of the register
	 * tests.  Some bits are read-only, some toggle, and some
	 * are writeable on newer MACs.
	 */
	before = FUNC1(&adapter->hw, IXGBE_STATUS);
	value = (FUNC1(&adapter->hw, IXGBE_STATUS) & toggle);
	FUNC3(&adapter->hw, IXGBE_STATUS, toggle);
	after = FUNC1(&adapter->hw, IXGBE_STATUS) & toggle;
	if (value != after) {
		FUNC0(drv, "failed STATUS register test got: 0x%08X expected: 0x%08X\n",
		      after, value);
		*data = 1;
		return 1;
	}
	/* restore previous status */
	FUNC3(&adapter->hw, IXGBE_STATUS, before);

	/*
	 * Perform the remainder of the register test, looping through
	 * the test table until we either fail or reach the null entry.
	 */
	while (test->reg) {
		for (i = 0; i < test->array_len; i++) {
			bool b = false;

			switch (test->test_type) {
			case PATTERN_TEST:
				b = FUNC4(adapter, data,
						     test->reg + (i * 0x40),
						     test->mask,
						     test->write);
				break;
			case SET_READ_TEST:
				b = FUNC5(adapter, data,
						      test->reg + (i * 0x40),
						      test->mask,
						      test->write);
				break;
			case WRITE_NO_TEST:
				FUNC3(&adapter->hw,
						test->reg + (i * 0x40),
						test->write);
				break;
			case TABLE32_TEST:
				b = FUNC4(adapter, data,
						     test->reg + (i * 4),
						     test->mask,
						     test->write);
				break;
			case TABLE64_TEST_LO:
				b = FUNC4(adapter, data,
						     test->reg + (i * 8),
						     test->mask,
						     test->write);
				break;
			case TABLE64_TEST_HI:
				b = FUNC4(adapter, data,
						     (test->reg + 4) + (i * 8),
						     test->mask,
						     test->write);
				break;
			}
			if (b)
				return 1;
		}
		test++;
	}

	*data = 0;
	return 0;
}