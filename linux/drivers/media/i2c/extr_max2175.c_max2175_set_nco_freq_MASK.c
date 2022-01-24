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
struct max2175 {int xtal_freq; int decim_ratio; } ;
typedef  int s64 ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct max2175*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct max2175*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct max2175*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct max2175*,char*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct max2175 *ctx, s32 nco_freq)
{
	s32 clock_rate = ctx->xtal_freq / ctx->decim_ratio;
	u32 nco_reg, abs_nco_freq = FUNC0(nco_freq);
	s64 nco_val_desired;
	int ret;

	if (abs_nco_freq < clock_rate / 2) {
		nco_val_desired = 2 * nco_freq;
	} else {
		nco_val_desired = 2LL * (clock_rate - abs_nco_freq);
		if (nco_freq < 0)
			nco_val_desired = -nco_val_desired;
	}

	nco_reg = FUNC2(nco_val_desired << 20, clock_rate);

	if (nco_freq < 0)
		nco_reg += 0x200000;

	/* Check CSM is not busy */
	ret = FUNC1(ctx);
	if (ret)
		return ret;

	FUNC5(ctx, "freq %d desired %lld reg %u\n",
		nco_freq, nco_val_desired, nco_reg);

	/* Write the calculated values to the appropriate registers */
	FUNC4(ctx, 7, 4, 0, (nco_reg >> 16) & 0x1f);
	FUNC3(ctx, 8, nco_reg >> 8);
	FUNC3(ctx, 9, nco_reg);

	return ret;
}