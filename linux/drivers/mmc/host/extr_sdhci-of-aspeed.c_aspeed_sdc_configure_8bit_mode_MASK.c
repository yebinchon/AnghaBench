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
struct aspeed_sdhci {int /*<<< orphan*/  width_mask; } ;
struct aspeed_sdc {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ ASPEED_SDC_INFO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct aspeed_sdc *sdc,
					   struct aspeed_sdhci *sdhci,
					   bool bus8)
{
	u32 info;

	/* Set/clear 8 bit mode */
	FUNC1(&sdc->lock);
	info = FUNC0(sdc->regs + ASPEED_SDC_INFO);
	if (bus8)
		info |= sdhci->width_mask;
	else
		info &= ~sdhci->width_mask;
	FUNC3(info, sdc->regs + ASPEED_SDC_INFO);
	FUNC2(&sdc->lock);
}