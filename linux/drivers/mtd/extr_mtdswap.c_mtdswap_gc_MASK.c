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
struct swap_eb {int flags; } ;
struct mtdswap_dev {scalar_t__ spare_eblks; } ;

/* Variables and functions */
 int EBLOCK_BITFLIP ; 
 int EBLOCK_FAILED ; 
 int EBLOCK_READERR ; 
 int EIO ; 
 int ENOSPC ; 
 scalar_t__ MIN_SPARE_EBLOCKS ; 
 int /*<<< orphan*/  MTDSWAP_CLEAN ; 
 int /*<<< orphan*/  MTDSWAP_DIRTY ; 
 int /*<<< orphan*/  MTDSWAP_TYPE_CLEAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtdswap_dev*,struct swap_eb*) ; 
 int FUNC2 (struct mtdswap_dev*,struct swap_eb*) ; 
 int FUNC3 (struct mtdswap_dev*,struct swap_eb*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtdswap_dev*,struct swap_eb*) ; 
 struct swap_eb* FUNC5 (struct mtdswap_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct mtdswap_dev*,struct swap_eb*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mtdswap_dev*,struct swap_eb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mtdswap_dev *d, unsigned int background)
{
	struct swap_eb *eb;
	int ret;

	if (d->spare_eblks < MIN_SPARE_EBLOCKS)
		return 1;

	eb = FUNC5(d, background);
	if (!eb)
		return 1;

	ret = FUNC3(d, eb);
	if (ret == -ENOSPC)
		return 1;

	if (eb->flags & EBLOCK_FAILED) {
		FUNC4(d, eb);
		return 0;
	}

	eb->flags &= ~EBLOCK_BITFLIP;
	ret = FUNC2(d, eb);
	if ((eb->flags & EBLOCK_READERR) &&
		(ret || !FUNC1(d, eb)))
		return 0;

	if (ret == 0)
		ret = FUNC7(d, eb, MTDSWAP_TYPE_CLEAN);

	if (ret == 0)
		FUNC6(d, eb, MTDSWAP_CLEAN);
	else if (ret != -EIO && !FUNC0(ret))
		FUNC6(d, eb, MTDSWAP_DIRTY);

	return 0;
}