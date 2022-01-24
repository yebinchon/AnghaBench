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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct mmc_pwrseq_sd8787 {TYPE_1__ pwrseq; void* reset_gpio; void* pwrdn_gpio; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 void* FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct mmc_pwrseq_sd8787* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  mmc_pwrseq_sd8787_ops ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct mmc_pwrseq_sd8787*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct mmc_pwrseq_sd8787 *pwrseq;
	struct device *dev = &pdev->dev;

	pwrseq = FUNC3(dev, sizeof(*pwrseq), GFP_KERNEL);
	if (!pwrseq)
		return -ENOMEM;

	pwrseq->pwrdn_gpio = FUNC2(dev, "powerdown", GPIOD_OUT_LOW);
	if (FUNC0(pwrseq->pwrdn_gpio))
		return FUNC1(pwrseq->pwrdn_gpio);

	pwrseq->reset_gpio = FUNC2(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(pwrseq->reset_gpio))
		return FUNC1(pwrseq->reset_gpio);

	pwrseq->pwrseq.dev = dev;
	pwrseq->pwrseq.ops = &mmc_pwrseq_sd8787_ops;
	pwrseq->pwrseq.owner = THIS_MODULE;
	FUNC5(pdev, pwrseq);

	return FUNC4(&pwrseq->pwrseq);
}