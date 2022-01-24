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
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2063_COMM8 ; 
 int /*<<< orphan*/  B2063_LOGEN_SP5 ; 
 int /*<<< orphan*/  B2063_PA_SP2 ; 
 int /*<<< orphan*/  B2063_PA_SP3 ; 
 int /*<<< orphan*/  B2063_PA_SP4 ; 
 int /*<<< orphan*/  B2063_PA_SP7 ; 
 int /*<<< orphan*/  B2063_REG_SP1 ; 
 int /*<<< orphan*/  B2063_RX_BB_CTL2 ; 
 int /*<<< orphan*/  B2063_TX_RF_SP6 ; 
 int /*<<< orphan*/  B2063_TX_RF_SP9 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	FUNC0(dev);
	FUNC3(dev, B2063_LOGEN_SP5, 0);
	FUNC2(dev, B2063_COMM8, 0x38);
	FUNC3(dev, B2063_REG_SP1, 0x56);
	FUNC1(dev, B2063_RX_BB_CTL2, ~0x2);
	FUNC3(dev, B2063_PA_SP7, 0);
	FUNC3(dev, B2063_TX_RF_SP6, 0x20);
	FUNC3(dev, B2063_TX_RF_SP9, 0x40);
	if (dev->phy.rev == 2) {
		FUNC3(dev, B2063_PA_SP3, 0xa0);
		FUNC3(dev, B2063_PA_SP4, 0xa0);
		FUNC3(dev, B2063_PA_SP2, 0x18);
	} else {
		FUNC3(dev, B2063_PA_SP3, 0x20);
		FUNC3(dev, B2063_PA_SP2, 0x20);
	}
}