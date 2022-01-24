#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pinctrl {int dummy; } ;
struct omap_hsmmc_host {scalar_t__ wake_irq; TYPE_2__* dev; int /*<<< orphan*/  base; TYPE_1__* pdata; int /*<<< orphan*/  mmc; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_7__ {int controller_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  HCTL ; 
 scalar_t__ FUNC0 (struct pinctrl*) ; 
 int IWE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OMAP_HSMMC_SWAKEUP_MISSING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PINCTRL_STATE_DEFAULT ; 
 int /*<<< orphan*/  PINCTRL_STATE_IDLE ; 
 int FUNC3 (struct pinctrl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 struct pinctrl* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct pinctrl*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct pinctrl* FUNC12 (struct pinctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct omap_hsmmc_host *host)
{
	int ret;

	/*
	 * For omaps with wake-up path, wakeirq will be irq from pinctrl and
	 * for other omaps, wakeirq will be from GPIO (dat line remuxed to
	 * gpio). wakeirq is needed to detect sdio irq in runtime suspend state
	 * with functional clock disabled.
	 */
	if (!host->dev->of_node || !host->wake_irq)
		return -ENODEV;

	ret = FUNC7(host->dev, host->wake_irq);
	if (ret) {
		FUNC4(FUNC11(host->mmc), "Unable to request wake IRQ\n");
		goto err;
	}

	/*
	 * Some omaps don't have wake-up path from deeper idle states
	 * and need to remux SDIO DAT1 to GPIO for wake-up from idle.
	 */
	if (host->pdata->controller_flags & OMAP_HSMMC_SWAKEUP_MISSING) {
		struct pinctrl *p = FUNC9(host->dev);
		if (FUNC0(p)) {
			ret = FUNC3(p);
			goto err_free_irq;
		}
		if (FUNC0(FUNC12(p, PINCTRL_STATE_DEFAULT))) {
			FUNC5(host->dev, "missing default pinctrl state\n");
			FUNC10(p);
			ret = -EINVAL;
			goto err_free_irq;
		}

		if (FUNC0(FUNC12(p, PINCTRL_STATE_IDLE))) {
			FUNC5(host->dev, "missing idle pinctrl state\n");
			FUNC10(p);
			ret = -EINVAL;
			goto err_free_irq;
		}
		FUNC10(p);
	}

	FUNC2(host->base, HCTL,
			 FUNC1(host->base, HCTL) | IWE);
	return 0;

err_free_irq:
	FUNC6(host->dev);
err:
	FUNC8(host->dev, "no SDIO IRQ support, falling back to polling\n");
	host->wake_irq = 0;
	return ret;
}