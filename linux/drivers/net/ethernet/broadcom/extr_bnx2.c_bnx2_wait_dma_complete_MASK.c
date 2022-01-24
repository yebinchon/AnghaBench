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
typedef  int u32 ;
struct bnx2 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5706 ; 
 scalar_t__ BNX2_CHIP_5708 ; 
 int /*<<< orphan*/  BNX2_MISC_ENABLE_CLR_BITS ; 
 int BNX2_MISC_ENABLE_CLR_BITS_DMA_ENGINE_ENABLE ; 
 int BNX2_MISC_ENABLE_CLR_BITS_HOST_COALESCE_ENABLE ; 
 int BNX2_MISC_ENABLE_CLR_BITS_RX_DMA_ENABLE ; 
 int BNX2_MISC_ENABLE_CLR_BITS_TX_DMA_ENABLE ; 
 int /*<<< orphan*/  BNX2_MISC_NEW_CORE_CTL ; 
 int BNX2_MISC_NEW_CORE_CTL_DMA_ENABLE ; 
 int /*<<< orphan*/  BNX2_PCICFG_DEVICE_CONTROL ; 
 int BNX2_PCICFG_DEVICE_STATUS_NO_PEND ; 
 int FUNC1 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct bnx2 *bp)
{
	u32 val;
	int i;

	/*
	 * Wait for the current PCI transaction to complete before
	 * issuing a reset.
	 */
	if ((FUNC0(bp) == BNX2_CHIP_5706) ||
	    (FUNC0(bp) == BNX2_CHIP_5708)) {
		FUNC2(bp, BNX2_MISC_ENABLE_CLR_BITS,
			BNX2_MISC_ENABLE_CLR_BITS_TX_DMA_ENABLE |
			BNX2_MISC_ENABLE_CLR_BITS_DMA_ENGINE_ENABLE |
			BNX2_MISC_ENABLE_CLR_BITS_RX_DMA_ENABLE |
			BNX2_MISC_ENABLE_CLR_BITS_HOST_COALESCE_ENABLE);
		val = FUNC1(bp, BNX2_MISC_ENABLE_CLR_BITS);
		FUNC4(5);
	} else {  /* 5709 */
		val = FUNC1(bp, BNX2_MISC_NEW_CORE_CTL);
		val &= ~BNX2_MISC_NEW_CORE_CTL_DMA_ENABLE;
		FUNC2(bp, BNX2_MISC_NEW_CORE_CTL, val);
		val = FUNC1(bp, BNX2_MISC_NEW_CORE_CTL);

		for (i = 0; i < 100; i++) {
			FUNC3(1);
			val = FUNC1(bp, BNX2_PCICFG_DEVICE_CONTROL);
			if (!(val & BNX2_PCICFG_DEVICE_STATUS_NO_PEND))
				break;
		}
	}

	return;
}