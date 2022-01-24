#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct max2175 {int decim_ratio; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAX2175_CH_MSEL ; 
 int /*<<< orphan*/  ch_coeff_dab1 ; 
 TYPE_1__* dab12_map ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct max2175 *ctx)
{
	unsigned int i;

	for (i = 0; i < FUNC0(dab12_map); i++)
		FUNC2(ctx, dab12_map[i].idx, dab12_map[i].val);

	ctx->decim_ratio = 1;

	/* Load the Channel Filter Coefficients into channel filter bank #2 */
	FUNC1(ctx, MAX2175_CH_MSEL, 2, ch_coeff_dab1);
}