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
struct max2175 {scalar_t__ xtal_freq; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX2175_CH_MSEL ; 
 int /*<<< orphan*/  MAX2175_EQ_MSEL ; 
 scalar_t__ MAX2175_EU_XTAL_FREQ ; 
 int /*<<< orphan*/  ch_coeff_fmeu ; 
 int /*<<< orphan*/  ch_coeff_fmna ; 
 int /*<<< orphan*/  eq_coeff_fmeu1_ra02_m6db ; 
 int /*<<< orphan*/  eq_coeff_fmna1_ra02_m6db ; 
 int FUNC0 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC3 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC4 (struct max2175*) ; 
 int FUNC5 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC6 (struct max2175*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct max2175*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct max2175*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct max2175*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct max2175 *ctx, u32 refout_bits)
{
	int ret;

	/* MAX2175 uses 36.864MHz clock for EU & 40.154MHz for NA region */
	if (ctx->xtal_freq == MAX2175_EU_XTAL_FREQ)
		FUNC3(ctx);
	else
		FUNC4(ctx);

	/* The default settings assume master */
	if (!ctx->master)
		FUNC7(ctx, 30, 7, 1);

	FUNC9(ctx, "refout_bits %u\n", refout_bits);

	/* Set REFOUT */
	FUNC8(ctx, 56, 7, 5, refout_bits);

	/* ADC Reset */
	FUNC7(ctx, 99, 1, 0);
	FUNC10(1000, 1500);
	FUNC7(ctx, 99, 1, 1);

	/* Load ADC preset values */
	FUNC1(ctx);

	/* Initialize the power management state machine */
	ret = FUNC0(ctx);
	if (ret)
		return ret;

	/* Recalibrate ADC */
	ret = FUNC5(ctx);
	if (ret)
		return ret;

	/* Load ROM values to appropriate registers */
	FUNC2(ctx);

	if (ctx->xtal_freq == MAX2175_EU_XTAL_FREQ) {
		/* Load FIR coefficients into bank 0 */
		FUNC6(ctx, MAX2175_CH_MSEL, 0,
					  ch_coeff_fmeu);
		FUNC6(ctx, MAX2175_EQ_MSEL, 0,
					  eq_coeff_fmeu1_ra02_m6db);
	} else {
		/* Load FIR coefficients into bank 0 */
		FUNC6(ctx, MAX2175_CH_MSEL, 0,
					  ch_coeff_fmna);
		FUNC6(ctx, MAX2175_EQ_MSEL, 0,
					  eq_coeff_fmna1_ra02_m6db);
	}
	FUNC9(ctx, "core initialized\n");

	return 0;
}