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
typedef  int u16 ;
struct skge_hw {TYPE_1__** dev; int /*<<< orphan*/  phy_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GM_SMI_CTRL ; 
 int GM_SMI_CT_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GM_SMI_DATA ; 
 int PHY_RETRIES ; 
 int FUNC2 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct skge_hw *hw, int port, u16 reg, u16 val)
{
	int i;

	FUNC3(hw, port, GM_SMI_DATA, val);
	FUNC3(hw, port, GM_SMI_CTRL,
			 FUNC0(hw->phy_addr) | FUNC1(reg));
	for (i = 0; i < PHY_RETRIES; i++) {
		FUNC5(1);

		if (!(FUNC2(hw, port, GM_SMI_CTRL) & GM_SMI_CT_BUSY))
			return 0;
	}

	FUNC4("%s: phy write timeout\n", hw->dev[port]->name);
	return -EIO;
}