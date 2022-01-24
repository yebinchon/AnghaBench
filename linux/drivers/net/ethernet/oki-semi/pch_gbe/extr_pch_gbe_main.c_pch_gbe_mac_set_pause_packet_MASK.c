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
struct TYPE_3__ {unsigned long* addr; } ;
struct pch_gbe_hw {TYPE_2__* reg; TYPE_1__ mac; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  netdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  PAUSE_PKT5; int /*<<< orphan*/  PAUSE_PKT4; int /*<<< orphan*/  PAUSE_PKT3; int /*<<< orphan*/  PAUSE_PKT2; int /*<<< orphan*/  PAUSE_PKT1; int /*<<< orphan*/  PAUSE_REQ; } ;

/* Variables and functions */
 unsigned long PCH_GBE_PAUSE_PKT1_VALUE ; 
 unsigned long PCH_GBE_PAUSE_PKT2_VALUE ; 
 unsigned long PCH_GBE_PAUSE_PKT4_VALUE ; 
 unsigned long PCH_GBE_PAUSE_PKT5_VALUE ; 
 unsigned long PCH_GBE_PS_PKT_RQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pch_gbe_adapter* FUNC3 (struct pch_gbe_hw*) ; 

__attribute__((used)) static void FUNC4(struct pch_gbe_hw *hw)
{
	struct pch_gbe_adapter *adapter = FUNC3(hw);
	unsigned long tmp2, tmp3;

	/* Set Pause packet */
	tmp2 = hw->mac.addr[1];
	tmp2 = (tmp2 << 8) | hw->mac.addr[0];
	tmp2 = PCH_GBE_PAUSE_PKT2_VALUE | (tmp2 << 16);

	tmp3 = hw->mac.addr[5];
	tmp3 = (tmp3 << 8) | hw->mac.addr[4];
	tmp3 = (tmp3 << 8) | hw->mac.addr[3];
	tmp3 = (tmp3 << 8) | hw->mac.addr[2];

	FUNC1(PCH_GBE_PAUSE_PKT1_VALUE, &hw->reg->PAUSE_PKT1);
	FUNC1(tmp2, &hw->reg->PAUSE_PKT2);
	FUNC1(tmp3, &hw->reg->PAUSE_PKT3);
	FUNC1(PCH_GBE_PAUSE_PKT4_VALUE, &hw->reg->PAUSE_PKT4);
	FUNC1(PCH_GBE_PAUSE_PKT5_VALUE, &hw->reg->PAUSE_PKT5);

	/* Transmit Pause Packet */
	FUNC1(PCH_GBE_PS_PKT_RQ, &hw->reg->PAUSE_REQ);

	FUNC2(adapter->netdev,
		   "PAUSE_PKT1-5 reg : 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
		   FUNC0(&hw->reg->PAUSE_PKT1),
		   FUNC0(&hw->reg->PAUSE_PKT2),
		   FUNC0(&hw->reg->PAUSE_PKT3),
		   FUNC0(&hw->reg->PAUSE_PKT4),
		   FUNC0(&hw->reg->PAUSE_PKT5));

	return;
}