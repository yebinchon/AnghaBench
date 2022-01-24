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
struct lbs_private {struct if_sdio_card* card; } ;
struct if_sdio_card {int dummy; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct if_sdio_card*) ; 
 int FUNC1 (struct if_sdio_card*,struct firmware const*) ; 
 int FUNC2 (struct if_sdio_card*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5(struct lbs_private *priv, int ret,
				     const struct firmware *helper,
				     const struct firmware *mainfw)
{
	struct if_sdio_card *card = priv->card;

	if (ret) {
		FUNC4("failed to find firmware (%d)\n", ret);
		return;
	}

	ret = FUNC1(card, helper);
	if (ret)
		return;

	FUNC3("Helper firmware loaded\n");

	ret = FUNC2(card, mainfw);
	if (ret)
		return;

	FUNC3("Firmware loaded\n");
	FUNC0(card);
}