#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmc_ios {scalar_t__ signal_voltage; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct k3_priv {int /*<<< orphan*/  reg; } ;
struct dw_mci_slot {struct dw_mci* host; } ;
struct dw_mci {int /*<<< orphan*/  dev; struct k3_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  AO_SCTRL_CTRL3 ; 
 int /*<<< orphan*/  AO_SCTRL_SEL18 ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MMC_SIGNAL_VOLTAGE_180 ; 
 scalar_t__ MMC_SIGNAL_VOLTAGE_330 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct dw_mci_slot* FUNC2 (struct mmc_host*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct dw_mci_slot *slot = FUNC2(mmc);
	struct k3_priv *priv;
	struct dw_mci *host;
	int min_uv, max_uv;
	int ret;

	host = slot->host;
	priv = host->priv;

	if (!priv || !priv->reg)
		return 0;

	if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_330) {
		ret = FUNC3(priv->reg, AO_SCTRL_CTRL3,
					 AO_SCTRL_SEL18, 0);
		min_uv = 3000000;
		max_uv = 3000000;
	} else if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180) {
		ret = FUNC3(priv->reg, AO_SCTRL_CTRL3,
					 AO_SCTRL_SEL18, AO_SCTRL_SEL18);
		min_uv = 1800000;
		max_uv = 1800000;
	} else {
		FUNC1(host->dev, "voltage not supported\n");
		return -EINVAL;
	}

	if (ret) {
		FUNC1(host->dev, "switch voltage failed\n");
		return ret;
	}

	if (FUNC0(mmc->supply.vqmmc))
		return 0;

	ret = FUNC4(mmc->supply.vqmmc, min_uv, max_uv);
	if (ret) {
		FUNC1(host->dev, "Regulator set error %d: %d - %d\n",
				 ret, min_uv, max_uv);
		return ret;
	}

	return 0;
}