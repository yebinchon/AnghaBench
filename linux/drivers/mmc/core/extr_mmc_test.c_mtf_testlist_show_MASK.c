#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* mmc_test_cases ; 
 int /*<<< orphan*/  mmc_test_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *sf, void *data)
{
	int i;

	FUNC1(&mmc_test_lock);

	FUNC4(sf, "0:\tRun all tests\n");
	for (i = 0; i < FUNC0(mmc_test_cases); i++)
		FUNC3(sf, "%d:\t%s\n", i + 1, mmc_test_cases[i].name);

	FUNC2(&mmc_test_lock);

	return 0;
}