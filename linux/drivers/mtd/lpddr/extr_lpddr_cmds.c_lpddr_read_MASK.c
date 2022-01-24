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
typedef  int /*<<< orphan*/  u_char ;
struct mtd_info {struct map_info* priv; } ;
struct map_info {struct lpddr_private* fldrv_priv; } ;
struct lpddr_private {int chipshift; struct flchip* chips; } ;
struct flchip {int /*<<< orphan*/  mutex; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FL_READY ; 
 int FUNC0 (struct map_info*,struct flchip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct map_info*,int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct map_info*,struct flchip*) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *mtd, loff_t adr, size_t len,
			size_t *retlen, u_char *buf)
{
	struct map_info *map = mtd->priv;
	struct lpddr_private *lpddr = map->fldrv_priv;
	int chipnum = adr >> lpddr->chipshift;
	struct flchip *chip = &lpddr->chips[chipnum];
	int ret = 0;

	FUNC2(&chip->mutex);
	ret = FUNC0(map, chip, FL_READY);
	if (ret) {
		FUNC3(&chip->mutex);
		return ret;
	}

	FUNC1(map, buf, adr, len);
	*retlen = len;

	FUNC4(map, chip);
	FUNC3(&chip->mutex);
	return ret;
}