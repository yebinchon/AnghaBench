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
struct max2175 {int /*<<< orphan*/  master; } ;

/* Variables and functions */
#define  MAX2175_DAB_1_2 129 
#define  MAX2175_EU_FM_1_2 128 
 int /*<<< orphan*/  FUNC0 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct max2175 *ctx, u32 rx_mode)
{
	switch (rx_mode) {
	case MAX2175_EU_FM_1_2:
		FUNC1(ctx);
		break;

	case MAX2175_DAB_1_2:
		FUNC0(ctx);
		break;
	}
	/* Master is the default setting */
	if (!ctx->master)
		FUNC2(ctx, 30, 7, 1);
}