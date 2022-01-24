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
typedef  int /*<<< orphan*/  uint ;
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int MIMO_PLCP_40MHZ ; 
 int RSPEC_RATE_MASK ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(u32 rspec, uint length, u8 *plcp)
{
	u8 mcs = (u8) (rspec & RSPEC_RATE_MASK);
	plcp[0] = mcs;
	if (FUNC1(rspec) || (mcs == 32))
		plcp[0] |= MIMO_PLCP_40MHZ;
	FUNC0(plcp, length);
	plcp[3] = FUNC2(rspec); /* rspec already holds this byte */
	plcp[3] |= 0x7; /* set smoothing, not sounding ppdu & reserved */
	plcp[4] = 0; /* number of extension spatial streams bit 0 & 1 */
	plcp[5] = 0;
}