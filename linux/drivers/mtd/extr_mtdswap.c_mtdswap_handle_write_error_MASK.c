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
struct swap_eb {unsigned int flags; } ;
struct mtdswap_dev {scalar_t__ curr_write_pos; struct swap_eb* curr_write; } ;

/* Variables and functions */
 unsigned int EBLOCK_FAILED ; 
 int /*<<< orphan*/  MTDSWAP_FAILING ; 
 int FUNC0 (struct mtdswap_dev*,struct swap_eb*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtdswap_dev*,struct swap_eb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mtdswap_dev *d, struct swap_eb *eb)
{
	unsigned int marked = eb->flags & EBLOCK_FAILED;
	struct swap_eb *curr_write = d->curr_write;

	eb->flags |= EBLOCK_FAILED;
	if (curr_write == eb) {
		d->curr_write = NULL;

		if (!marked && d->curr_write_pos != 0) {
			FUNC1(d, eb, MTDSWAP_FAILING);
			return 0;
		}
	}

	return FUNC0(d, eb);
}