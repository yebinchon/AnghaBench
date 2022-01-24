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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  stats; struct e1000_hw hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC4(struct e1000_adapter *adapter,
				    u8 status, u8 errors,
				    u32 length, const u8 *data)
{
	struct e1000_hw *hw = &adapter->hw;
	u8 last_byte = *(data + length - 1);

	if (FUNC0(hw, status, errors, length, last_byte)) {
		unsigned long irq_flags;

		FUNC2(&adapter->stats_lock, irq_flags);
		FUNC1(hw, &adapter->stats, length, data);
		FUNC3(&adapter->stats_lock, irq_flags);

		return true;
	}

	return false;
}