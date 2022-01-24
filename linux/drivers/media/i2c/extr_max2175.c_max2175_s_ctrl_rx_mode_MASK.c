#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct max2175 {TYPE_2__* hsls; TYPE_3__* rx_modes; int /*<<< orphan*/  freq; } ;
struct TYPE_6__ {int /*<<< orphan*/  freq; } ;
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
struct TYPE_5__ {TYPE_1__ cur; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct max2175*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct max2175*,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct max2175 *ctx, u32 rx_mode)
{
	/* Load mode. Range check already done */
	FUNC1(ctx, rx_mode);

	FUNC3(ctx, "s_ctrl_rx_mode: %u curr freq %u\n", rx_mode, ctx->freq);

	/* Check if current freq valid for mode & update */
	if (FUNC0(ctx, rx_mode, ctx->freq))
		FUNC2(ctx, ctx->freq, ctx->hsls->cur.val);
	else
		/* Use default freq of mode if current freq is not valid */
		FUNC2(ctx, ctx->rx_modes[rx_mode].freq,
				     ctx->hsls->cur.val);
}