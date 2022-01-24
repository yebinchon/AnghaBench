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
struct mmc_card {scalar_t__ type; int /*<<< orphan*/  complete_wq; int /*<<< orphan*/  dev; int /*<<< orphan*/  host; } ;
struct mmc_blk_data {scalar_t__ part_curr; scalar_t__ part_type; } ;

/* Variables and functions */
 scalar_t__ MMC_TYPE_SD_COMBO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mmc_blk_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_card*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_card*,struct mmc_blk_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_card*,struct mmc_blk_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_blk_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct mmc_card *card)
{
	struct mmc_blk_data *md = FUNC1(&card->dev);

	FUNC4(card, md);
	FUNC5(card, md);
	FUNC10(&card->dev);
	if (md->part_curr != md->part_type) {
		FUNC7(card->host);
		FUNC3(card, md->part_type);
		FUNC8(card->host);
	}
	if (card->type != MMC_TYPE_SD_COMBO)
		FUNC9(&card->dev);
	FUNC11(&card->dev);
	FUNC6(md);
	FUNC2(&card->dev, NULL);
	FUNC0(card->complete_wq);
}