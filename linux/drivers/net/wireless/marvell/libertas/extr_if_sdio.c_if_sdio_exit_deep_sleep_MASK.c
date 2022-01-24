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
struct lbs_private {int /*<<< orphan*/  dev; struct if_sdio_card* card; } ;
struct if_sdio_card {int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIGURATION_REG ; 
 int /*<<< orphan*/  HOST_POWER_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct lbs_private *priv)
{
	struct if_sdio_card *card = priv->card;
	int ret = -1;

	FUNC1(card->func);

	FUNC3(card->func, HOST_POWER_UP, CONFIGURATION_REG, &ret);
	if (ret)
		FUNC0(priv->dev, "sdio_writeb failed!\n");

	FUNC2(card->func);

	return ret;
}