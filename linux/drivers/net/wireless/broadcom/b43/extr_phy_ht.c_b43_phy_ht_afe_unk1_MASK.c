#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
#define  B43_PHY_HT_AFE_C1 133 
#define  B43_PHY_HT_AFE_C1_OVER 132 
#define  B43_PHY_HT_AFE_C2 131 
#define  B43_PHY_HT_AFE_C2_OVER 130 
#define  B43_PHY_HT_AFE_C3 129 
#define  B43_PHY_HT_AFE_C3_OVER 128 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,TYPE_1__ const,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,TYPE_1__ const,int) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	u8 i;

	static const u16 ctl_regs[3][2] = {
		{ B43_PHY_HT_AFE_C1_OVER, B43_PHY_HT_AFE_C1 },
		{ B43_PHY_HT_AFE_C2_OVER, B43_PHY_HT_AFE_C2 },
		{ B43_PHY_HT_AFE_C3_OVER, B43_PHY_HT_AFE_C3},
	};

	for (i = 0; i < 3; i++) {
		/* TODO: verify masks&sets */
		FUNC3(dev, ctl_regs[i][1], 0x4);
		FUNC3(dev, ctl_regs[i][0], 0x4);
		FUNC2(dev, ctl_regs[i][1], ~0x1);
		FUNC3(dev, ctl_regs[i][0], 0x1);
		FUNC1(dev, FUNC0(8, 5 + (i * 0x10)), 0);
		FUNC2(dev, ctl_regs[i][0], ~0x4);
	}
}