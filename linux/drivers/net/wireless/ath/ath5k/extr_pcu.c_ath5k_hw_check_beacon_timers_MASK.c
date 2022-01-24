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
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_TIMER0 ; 
 int /*<<< orphan*/  AR5K_TIMER1 ; 
 int /*<<< orphan*/  AR5K_TIMER3 ; 
 int AR5K_TUNE_DMA_BEACON_RESP ; 
 scalar_t__ FUNC0 (unsigned int,unsigned int,int,int) ; 
 int FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 

bool
FUNC2(struct ath5k_hw *ah, int intval)
{
	unsigned int nbtt, atim, dma;

	nbtt = FUNC1(ah, AR5K_TIMER0);
	atim = FUNC1(ah, AR5K_TIMER3);
	dma = FUNC1(ah, AR5K_TIMER1) >> 3;

	/* NOTE: SWBA is different. Having a wrong window there does not
	 * stop us from sending data and this condition is caught by
	 * other means (SWBA interrupt) */

	if (FUNC0(nbtt, atim, 1, intval) &&
	    FUNC0(dma, nbtt, AR5K_TUNE_DMA_BEACON_RESP,
				  intval))
		return true; /* O.K. */
	return false;
}