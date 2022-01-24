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
struct mmc_pwrseq_simple {TYPE_1__ pwrseq; int /*<<< orphan*/  power_off_delay_us; int /*<<< orphan*/  post_power_on_delay_ms; int /*<<< orphan*/  reset_gpios; int /*<<< orphan*/  ext_clk; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct mmc_pwrseq_simple* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  mmc_pwrseq_simple_ops ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct mmc_pwrseq_simple*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mmc_pwrseq_simple *pwrseq;
	struct device *dev = &pdev->dev;

	pwrseq = FUNC5(dev, sizeof(*pwrseq), GFP_KERNEL);
	if (!pwrseq)
		return -ENOMEM;

	pwrseq->ext_clk = FUNC3(dev, "ext_clock");
	if (FUNC0(pwrseq->ext_clk) && FUNC1(pwrseq->ext_clk) != -ENOENT)
		return FUNC1(pwrseq->ext_clk);

	pwrseq->reset_gpios = FUNC4(dev, "reset",
							GPIOD_OUT_HIGH);
	if (FUNC0(pwrseq->reset_gpios) &&
	    FUNC1(pwrseq->reset_gpios) != -ENOENT &&
	    FUNC1(pwrseq->reset_gpios) != -ENOSYS) {
		return FUNC1(pwrseq->reset_gpios);
	}

	FUNC2(dev, "post-power-on-delay-ms",
				 &pwrseq->post_power_on_delay_ms);
	FUNC2(dev, "power-off-delay-us",
				 &pwrseq->power_off_delay_us);

	pwrseq->pwrseq.dev = dev;
	pwrseq->pwrseq.ops = &mmc_pwrseq_simple_ops;
	pwrseq->pwrseq.owner = THIS_MODULE;
	FUNC7(pdev, pwrseq);

	return FUNC6(&pwrseq->pwrseq);
}