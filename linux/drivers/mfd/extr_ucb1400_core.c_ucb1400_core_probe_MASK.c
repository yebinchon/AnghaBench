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
typedef  int /*<<< orphan*/  ucb_ts ;
typedef  int /*<<< orphan*/  ucb_gpio ;
struct ucb1400_ts {scalar_t__ id; int irq; struct snd_ac97* ac97; int /*<<< orphan*/  gpio_offset; int /*<<< orphan*/  gpio_teardown; int /*<<< orphan*/  gpio_setup; } ;
struct ucb1400_pdata {scalar_t__ irq; int /*<<< orphan*/  gpio_offset; int /*<<< orphan*/  gpio_teardown; int /*<<< orphan*/  gpio_setup; } ;
struct ucb1400_gpio {scalar_t__ id; int irq; struct snd_ac97* ac97; int /*<<< orphan*/  gpio_offset; int /*<<< orphan*/  gpio_teardown; int /*<<< orphan*/  gpio_setup; } ;
struct ucb1400 {void* ucb1400_gpio; void* ucb1400_ts; } ;
struct snd_ac97 {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UCB_ID ; 
 scalar_t__ UCB_ID_1400 ; 
 struct ucb1400_pdata* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct ucb1400*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucb1400*) ; 
 struct ucb1400* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucb1400_ts*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (void*) ; 
 int FUNC6 (void*,struct ucb1400_ts*,int) ; 
 void* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 struct snd_ac97* FUNC10 (struct device*) ; 
 scalar_t__ FUNC11 (struct snd_ac97*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct device *dev)
{
	int err;
	struct ucb1400 *ucb;
	struct ucb1400_ts ucb_ts;
	struct ucb1400_gpio ucb_gpio;
	struct snd_ac97 *ac97;
	struct ucb1400_pdata *pdata = FUNC0(dev);

	FUNC4(&ucb_ts, 0, sizeof(ucb_ts));
	FUNC4(&ucb_gpio, 0, sizeof(ucb_gpio));

	ucb = FUNC3(sizeof(struct ucb1400), GFP_KERNEL);
	if (!ucb) {
		err = -ENOMEM;
		goto err;
	}

	FUNC1(dev, ucb);

	ac97 = FUNC10(dev);

	ucb_ts.id = FUNC11(ac97, UCB_ID);
	if (ucb_ts.id != UCB_ID_1400) {
		err = -ENODEV;
		goto err0;
	}

	/* GPIO */
	ucb_gpio.ac97 = ac97;
	if (pdata) {
		ucb_gpio.gpio_setup = pdata->gpio_setup;
		ucb_gpio.gpio_teardown = pdata->gpio_teardown;
		ucb_gpio.gpio_offset = pdata->gpio_offset;
	}
	ucb->ucb1400_gpio = FUNC7("ucb1400_gpio", -1);
	if (!ucb->ucb1400_gpio) {
		err = -ENOMEM;
		goto err0;
	}
	err = FUNC6(ucb->ucb1400_gpio, &ucb_gpio,
					sizeof(ucb_gpio));
	if (err)
		goto err1;
	err = FUNC5(ucb->ucb1400_gpio);
	if (err)
		goto err1;

	/* TOUCHSCREEN */
	ucb_ts.ac97 = ac97;

	if (pdata != NULL && pdata->irq >= 0)
		ucb_ts.irq = pdata->irq;
	else
		ucb_ts.irq = -1;

	ucb->ucb1400_ts = FUNC7("ucb1400_ts", -1);
	if (!ucb->ucb1400_ts) {
		err = -ENOMEM;
		goto err2;
	}
	err = FUNC6(ucb->ucb1400_ts, &ucb_ts,
					sizeof(ucb_ts));
	if (err)
		goto err3;
	err = FUNC5(ucb->ucb1400_ts);
	if (err)
		goto err3;

	return 0;

err3:
	FUNC9(ucb->ucb1400_ts);
err2:
	FUNC8(ucb->ucb1400_gpio);
err1:
	FUNC9(ucb->ucb1400_gpio);
err0:
	FUNC2(ucb);
err:
	return err;
}