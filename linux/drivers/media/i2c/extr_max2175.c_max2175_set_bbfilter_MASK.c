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
struct max2175 {int /*<<< orphan*/  rom_bbf_bw_fm; int /*<<< orphan*/  rom_bbf_bw_dab; int /*<<< orphan*/  rom_bbf_bw_am; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct max2175*) ; 
 scalar_t__ FUNC1 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct max2175*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct max2175 *ctx)
{
	if (FUNC0(ctx)) {
		FUNC2(ctx, 12, 3, 0, ctx->rom_bbf_bw_am);
		FUNC3(ctx, "set_bbfilter AM: rom %d\n", ctx->rom_bbf_bw_am);
	} else if (FUNC1(ctx)) {
		FUNC2(ctx, 12, 3, 0, ctx->rom_bbf_bw_dab);
		FUNC3(ctx, "set_bbfilter DAB: rom %d\n", ctx->rom_bbf_bw_dab);
	} else {
		FUNC2(ctx, 12, 3, 0, ctx->rom_bbf_bw_fm);
		FUNC3(ctx, "set_bbfilter FM: rom %d\n", ctx->rom_bbf_bw_fm);
	}
}