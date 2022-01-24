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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct max2175 {int xtal_freq; } ;
typedef  enum max2175_band { ____Placeholder_max2175_band } max2175_band ;

/* Variables and functions */
#define  MAX2175_BAND_AM 130 
#define  MAX2175_BAND_FM 129 
 int MAX2175_BAND_L ; 
#define  MAX2175_BAND_VHF 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct max2175*) ; 
 int FUNC2 (struct max2175*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct max2175*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct max2175*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct max2175*,char*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct max2175 *ctx, u32 lo_freq)
{
	u8 lo_mult, loband_bits = 0, vcodiv_bits = 0;
	u32 int_desired, frac_desired;
	enum max2175_band band;
	int ret;

	band = FUNC2(ctx, 5, 1, 0);
	switch (band) {
	case MAX2175_BAND_AM:
		lo_mult = 16;
		break;
	case MAX2175_BAND_FM:
		if (lo_freq <= 74700000) {
			lo_mult = 16;
		} else if (lo_freq > 74700000 && lo_freq <= 110000000) {
			loband_bits = 1;
			lo_mult = 8;
		} else {
			loband_bits = 1;
			vcodiv_bits = 3;
			lo_mult = 8;
		}
		break;
	case MAX2175_BAND_VHF:
		if (lo_freq <= 210000000)
			vcodiv_bits = 2;
		else
			vcodiv_bits = 1;

		loband_bits = 2;
		lo_mult = 4;
		break;
	default:
		loband_bits = 3;
		vcodiv_bits = 2;
		lo_mult = 2;
		break;
	}

	if (band == MAX2175_BAND_L)
		lo_freq /= lo_mult;
	else
		lo_freq *= lo_mult;

	int_desired = lo_freq / ctx->xtal_freq;
	frac_desired = FUNC0((u64)(lo_freq % ctx->xtal_freq) << 20,
			       ctx->xtal_freq);

	/* Check CSM is not busy */
	ret = FUNC1(ctx);
	if (ret)
		return ret;

	FUNC5(ctx, "lo_mult %u int %u  frac %u\n",
		lo_mult, int_desired, frac_desired);

	/* Write the calculated values to the appropriate registers */
	FUNC3(ctx, 1, int_desired);
	FUNC4(ctx, 2, 3, 0, (frac_desired >> 16) & 0xf);
	FUNC3(ctx, 3, frac_desired >> 8);
	FUNC3(ctx, 4, frac_desired);
	FUNC4(ctx, 5, 3, 2, loband_bits);
	FUNC4(ctx, 6, 7, 6, vcodiv_bits);

	return ret;
}