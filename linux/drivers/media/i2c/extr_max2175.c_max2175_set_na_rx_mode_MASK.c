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
struct max2175 {int decim_ratio; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX2175_CH_MSEL ; 
 int /*<<< orphan*/  MAX2175_EQ_MSEL ; 
#define  MAX2175_NA_FM_1_0 129 
#define  MAX2175_NA_FM_2_0 128 
 int /*<<< orphan*/  ch_coeff_fmna ; 
 int /*<<< orphan*/  eq_coeff_fmna1_ra02_m6db ; 
 int /*<<< orphan*/  FUNC0 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct max2175*,int,int,int) ; 

__attribute__((used)) static void FUNC4(struct max2175 *ctx, u32 rx_mode)
{
	switch (rx_mode) {
	case MAX2175_NA_FM_1_0:
		FUNC0(ctx);
		break;
	case MAX2175_NA_FM_2_0:
		FUNC1(ctx);
		break;
	}
	/* Master is the default setting */
	if (!ctx->master)
		FUNC3(ctx, 30, 7, 1);

	ctx->decim_ratio = 27;

	/* Load the Channel Filter Coefficients into channel filter bank #2 */
	FUNC2(ctx, MAX2175_CH_MSEL, 0, ch_coeff_fmna);
	FUNC2(ctx, MAX2175_EQ_MSEL, 0,
				  eq_coeff_fmna1_ra02_m6db);
}