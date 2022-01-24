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
struct mmc_ios {int clock; int /*<<< orphan*/  timing; } ;
struct k3_priv {int cur_speed; } ;
struct dw_mci {unsigned long bus_hz; scalar_t__ current_speed; int /*<<< orphan*/  ciu_clk; int /*<<< orphan*/  dev; struct k3_priv* priv; } ;

/* Variables and functions */
 int GENCLK_DIV ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct dw_mci *host, struct mmc_ios *ios)
{
	int ret;
	unsigned long wanted;
	unsigned long actual;
	struct k3_priv *priv = host->priv;

	if (!ios->clock || ios->clock == priv->cur_speed)
		return;

	wanted = ios->clock * (GENCLK_DIV + 1);
	ret = FUNC1(host->ciu_clk, wanted);
	if (ret) {
		FUNC2(host->dev, "failed to set rate %luHz\n", wanted);
		return;
	}
	actual = FUNC0(host->ciu_clk);

	FUNC3(host, ios->timing, -1);
	host->bus_hz = actual / (GENCLK_DIV + 1);
	host->current_speed = 0;
	priv->cur_speed = host->bus_hz;
}