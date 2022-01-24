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
struct lbs_private {struct if_sdio_card* card; } ;
struct if_sdio_card {TYPE_1__* func; int /*<<< orphan*/  workqueue; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct if_sdio_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct lbs_private *priv)
{
	struct if_sdio_card *card = priv->card;
	int ret;

	FUNC0(card->workqueue);

	ret = FUNC1(card);

	/* Let runtime PM know the card is powered off */
	FUNC2(&card->func->dev);

	return ret;
}