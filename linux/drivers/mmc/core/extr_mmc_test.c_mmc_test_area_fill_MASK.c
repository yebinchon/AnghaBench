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
struct mmc_test_area {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  max_tfr; } ;
struct mmc_test_card {struct mmc_test_area area; } ;

/* Variables and functions */
 int FUNC0 (struct mmc_test_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mmc_test_card *test)
{
	struct mmc_test_area *t = &test->area;

	return FUNC0(test, t->max_tfr, t->dev_addr, 1, 0, 0);
}