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
struct mmc_ios {int clock; } ;
struct dw_mci {int /*<<< orphan*/  biu_clk; int /*<<< orphan*/  bus_hz; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct dw_mci *host, struct mmc_ios *ios)
{
	int ret;
	unsigned int clock;

	clock = (ios->clock <= 25000000) ? 25000000 : ios->clock;

	ret = FUNC1(host->biu_clk, clock);
	if (ret)
		FUNC2(host->dev, "failed to set rate %uHz\n", clock);

	host->bus_hz = FUNC0(host->biu_clk);
}