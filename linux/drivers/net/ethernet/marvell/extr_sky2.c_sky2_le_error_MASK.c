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
typedef  scalar_t__ u16 ;
struct sky2_hw {TYPE_1__* pdev; struct net_device** dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMU_CLR_IRQ_CHK ; 
 int /*<<< orphan*/  PREF_UNIT_GET_IDX ; 
 int /*<<< orphan*/  PREF_UNIT_PUT_IDX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sky2_hw *hw, unsigned port, u16 q)
{
	struct net_device *dev = hw->dev[port];
	u16 idx = FUNC3(hw, FUNC1(q, PREF_UNIT_GET_IDX));

	FUNC2(&hw->pdev->dev, "%s: descriptor error q=%#x get=%u put=%u\n",
		dev->name, (unsigned) q, (unsigned) idx,
		(unsigned) FUNC3(hw, FUNC1(q, PREF_UNIT_PUT_IDX)));

	FUNC4(hw, FUNC0(q, Q_CSR), BMU_CLR_IRQ_CHK);
}