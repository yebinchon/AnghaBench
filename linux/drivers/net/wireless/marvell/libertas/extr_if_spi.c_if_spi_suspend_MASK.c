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
struct spi_device {int /*<<< orphan*/  irq; } ;
struct if_spi_card {int suspended; TYPE_1__* pdata; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* teardown ) (struct spi_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct if_spi_card* FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*) ; 
 struct spi_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct spi_device *spi = FUNC5(dev);
	struct if_spi_card *card = FUNC3(spi);

	if (!card->suspended) {
		FUNC2(card->priv);
		FUNC1(card->workqueue);
		FUNC0(spi->irq);

		if (card->pdata->teardown)
			card->pdata->teardown(spi);
		card->suspended = 1;
	}

	return 0;
}