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
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {TYPE_1__* pdev; struct e1000_hw hw; } ;
struct ethtool_regs {unsigned int version; } ;
struct TYPE_2__ {int revision; unsigned int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int IGBVF_REGS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 struct igbvf_adapter* FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct net_device *netdev,
			   struct ethtool_regs *regs, void *p)
{
	struct igbvf_adapter *adapter = FUNC8(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 *regs_buff = p;

	FUNC7(p, 0, IGBVF_REGS_LEN * sizeof(u32));

	regs->version = (1u << 24) |
			(adapter->pdev->revision << 16) |
			adapter->pdev->device;

	regs_buff[0] = FUNC6(CTRL);
	regs_buff[1] = FUNC6(STATUS);

	regs_buff[2] = FUNC6(FUNC1(0));
	regs_buff[3] = FUNC6(FUNC0(0));
	regs_buff[4] = FUNC6(FUNC2(0));

	regs_buff[5] = FUNC6(FUNC4(0));
	regs_buff[6] = FUNC6(FUNC3(0));
	regs_buff[7] = FUNC6(FUNC5(0));
}