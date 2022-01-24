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
struct mtdswap_dev {int pages_per_eblk; unsigned int curr_write_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAN ; 
 int FUNC0 (struct mtdswap_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(struct mtdswap_dev *d)
{
	return FUNC0(d, CLEAN) * d->pages_per_eblk +
		d->pages_per_eblk - d->curr_write_pos;
}