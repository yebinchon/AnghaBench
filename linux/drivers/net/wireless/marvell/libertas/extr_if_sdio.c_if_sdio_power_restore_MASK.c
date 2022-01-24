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
struct lbs_private {int /*<<< orphan*/  fw_ready; struct if_sdio_card* card; } ;
struct if_sdio_card {int /*<<< orphan*/  pwron_waitq; TYPE_1__* func; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct if_sdio_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lbs_private *priv)
{
	struct if_sdio_card *card = priv->card;
	int r;

	/* Make sure the card will not be powered off by runtime PM */
	FUNC1(&card->func->dev);

	r = FUNC0(card);
	if (r)
		return r;

	FUNC2(card->pwron_waitq, priv->fw_ready);
	return 0;
}