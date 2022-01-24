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
struct sdio_func {int dummy; } ;
struct if_sdio_card {TYPE_1__* priv; int /*<<< orphan*/  pwron_waitq; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_ready; scalar_t__ power_up_on_resume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct sdio_func* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct if_sdio_card*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 struct if_sdio_card* FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct sdio_func *func = FUNC1(dev);
	struct if_sdio_card *card = FUNC5(func);
	int ret;

	FUNC0(dev, "%s: resume: we're back\n", FUNC4(func));

	if (card->priv->power_up_on_resume) {
		FUNC2(card);
		FUNC6(card->pwron_waitq, card->priv->fw_ready);
	}

	ret = FUNC3(card->priv);

	return ret;
}