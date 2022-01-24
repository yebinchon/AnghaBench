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
struct lbs_private {int dummy; } ;
struct if_spi_card {TYPE_1__* pdata; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  resume_work; struct lbs_private* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* teardown ) (struct spi_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_spi_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct if_spi_card*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct lbs_private*) ; 
 struct if_spi_card* FUNC7 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	struct if_spi_card *card = FUNC7(spi);
	struct lbs_private *priv = card->priv;

	FUNC4("libertas_spi_remove\n");

	FUNC0(&card->resume_work);

	FUNC6(priv);
	FUNC5(priv); /* will call free_netdev */

	FUNC3(spi->irq, card);
	FUNC1(card->workqueue);
	if (card->pdata->teardown)
		card->pdata->teardown(spi);
	FUNC2(card);

	return 0;
}