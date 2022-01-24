#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; struct device* dev; int /*<<< orphan*/ * ops; } ;
struct TYPE_3__ {int priority; int /*<<< orphan*/  notifier_call; } ;
struct mmc_pwrseq_emmc {TYPE_2__ pwrseq; TYPE_1__ reset_nb; int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct mmc_pwrseq_emmc* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmc_pwrseq_emmc_ops ; 
 int /*<<< orphan*/  mmc_pwrseq_emmc_reset_nb ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct mmc_pwrseq_emmc*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct mmc_pwrseq_emmc *pwrseq;
	struct device *dev = &pdev->dev;

	pwrseq = FUNC4(dev, sizeof(*pwrseq), GFP_KERNEL);
	if (!pwrseq)
		return -ENOMEM;

	pwrseq->reset_gpio = FUNC3(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(pwrseq->reset_gpio))
		return FUNC1(pwrseq->reset_gpio);

	if (!FUNC5(pwrseq->reset_gpio)) {
		/*
		 * register reset handler to ensure emmc reset also from
		 * emergency_reboot(), priority 255 is the highest priority
		 * so it will be executed before any system reboot handler.
		 */
		pwrseq->reset_nb.notifier_call = mmc_pwrseq_emmc_reset_nb;
		pwrseq->reset_nb.priority = 255;
		FUNC8(&pwrseq->reset_nb);
	} else {
		FUNC2(dev, "EMMC reset pin tied to a sleepy GPIO driver; reset on emergency-reboot disabled\n");
	}

	pwrseq->pwrseq.ops = &mmc_pwrseq_emmc_ops;
	pwrseq->pwrseq.dev = dev;
	pwrseq->pwrseq.owner = THIS_MODULE;
	FUNC7(pdev, pwrseq);

	return FUNC6(&pwrseq->pwrseq);
}