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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_4__ {int etype; } ;
struct igb_nfc_filter {int action; size_t etype_reg_index; TYPE_2__ filter; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int* etype_bitmap; TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int E1000_ETQF_ETYPE_MASK ; 
 int E1000_ETQF_FILTER_ENABLE ; 
 int E1000_ETQF_QUEUE_ENABLE ; 
 int E1000_ETQF_QUEUE_MASK ; 
 int E1000_ETQF_QUEUE_SHIFT ; 
 int EINVAL ; 
 int ETHER_TYPE_FULL_MASK ; 
 size_t MAX_ETYPE_FILTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct igb_adapter *adapter,
					struct igb_nfc_filter *input)
{
	struct e1000_hw *hw = &adapter->hw;
	u8 i;
	u32 etqf;
	u16 etype;

	/* find an empty etype filter register */
	for (i = 0; i < MAX_ETYPE_FILTER; ++i) {
		if (!adapter->etype_bitmap[i])
			break;
	}
	if (i == MAX_ETYPE_FILTER) {
		FUNC1(&adapter->pdev->dev, "ethtool -N: etype filters are all used.\n");
		return -EINVAL;
	}

	adapter->etype_bitmap[i] = true;

	etqf = FUNC3(FUNC0(i));
	etype = FUNC2(input->filter.etype & ETHER_TYPE_FULL_MASK);

	etqf |= E1000_ETQF_FILTER_ENABLE;
	etqf &= ~E1000_ETQF_ETYPE_MASK;
	etqf |= (etype & E1000_ETQF_ETYPE_MASK);

	etqf &= ~E1000_ETQF_QUEUE_MASK;
	etqf |= ((input->action << E1000_ETQF_QUEUE_SHIFT)
		& E1000_ETQF_QUEUE_MASK);
	etqf |= E1000_ETQF_QUEUE_ENABLE;

	FUNC4(FUNC0(i), etqf);

	input->etype_reg_index = i;

	return 0;
}