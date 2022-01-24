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
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct mtd_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int FUNC4(struct mtd_info *mtd, unsigned char *bbt,
					unsigned int eb, int ebcnt)
{
	int i, bad = 0;

	if (!FUNC2(mtd))
		return 0;

	FUNC3("scanning for bad eraseblocks\n");
	for (i = 0; i < ebcnt; ++i) {
		bbt[i] = FUNC1(mtd, eb + i) ? 1 : 0;
		if (bbt[i])
			bad += 1;
		FUNC0();
	}
	FUNC3("scanned %d eraseblocks, %d are bad\n", i, bad);

	return 0;
}