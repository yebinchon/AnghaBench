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
struct TYPE_2__ {scalar_t__ cmdq_en; } ;
struct mmc_card {int /*<<< orphan*/  dev; int /*<<< orphan*/  host; TYPE_1__ ext_csd; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mmc_card*) ; 

__attribute__((used)) static int FUNC7(struct mmc_card *card)
{
	int ret;

	if (!FUNC1(card) && !FUNC2(card))
		return -ENODEV;

	ret = FUNC6(card);
	if (ret)
		return ret;

	if (card->ext_csd.cmdq_en) {
		FUNC3(card->host);
		ret = FUNC4(card);
		FUNC5(card->host);
		if (ret)
			return ret;
	}

	FUNC0(&card->dev, "Card claimed for testing.\n");

	return 0;
}