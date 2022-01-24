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
typedef  int /*<<< orphan*/  u32 ;
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_CR ; 
 int AR5K_CR_RXE ; 
 int /*<<< orphan*/  AR5K_RXDP ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_DMA ; 
 int EIO ; 
 int FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct ath5k_hw *ah, u32 phys_addr)
{
	if (FUNC1(ah, AR5K_CR) & AR5K_CR_RXE) {
		FUNC0(ah, ATH5K_DEBUG_DMA,
				"tried to set RXDP while rx was active !\n");
		return -EIO;
	}

	FUNC2(ah, phys_addr, AR5K_RXDP);
	return 0;
}