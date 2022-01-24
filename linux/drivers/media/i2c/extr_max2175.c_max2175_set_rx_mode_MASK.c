#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct max2175 {scalar_t__ xtal_freq; int mode_resolved; TYPE_4__* i2s_en; TYPE_2__* hsls; scalar_t__ am_hiz; } ;
struct TYPE_7__ {int /*<<< orphan*/  val; } ;
struct TYPE_8__ {TYPE_3__ cur; } ;
struct TYPE_5__ {int /*<<< orphan*/  val; } ;
struct TYPE_6__ {TYPE_1__ cur; } ;

/* Variables and functions */
 scalar_t__ MAX2175_EU_XTAL_FREQ ; 
 int /*<<< orphan*/  FUNC0 (struct max2175*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct max2175*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct max2175*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct max2175*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct max2175*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct max2175*,char*,...) ; 

__attribute__((used)) static int FUNC8(struct max2175 *ctx, u32 rx_mode)
{
	FUNC7(ctx, "set_rx_mode: %u am_hiz %u\n", rx_mode, ctx->am_hiz);
	if (ctx->xtal_freq == MAX2175_EU_XTAL_FREQ)
		FUNC2(ctx, rx_mode);
	else
		FUNC4(ctx, rx_mode);

	if (ctx->am_hiz) {
		FUNC7(ctx, "setting AM HiZ related config\n");
		FUNC5(ctx, 50, 5, 1);
		FUNC5(ctx, 90, 7, 1);
		FUNC6(ctx, 73, 1, 0, 2);
		FUNC6(ctx, 80, 5, 0, 33);
	}

	/* Load BB filter trim values saved in ROM */
	FUNC1(ctx);

	/* Set HSLS */
	FUNC3(ctx, ctx->hsls->cur.val);

	/* Use i2s enable settings */
	FUNC0(ctx, ctx->i2s_en->cur.val);

	ctx->mode_resolved = true;

	return 0;
}