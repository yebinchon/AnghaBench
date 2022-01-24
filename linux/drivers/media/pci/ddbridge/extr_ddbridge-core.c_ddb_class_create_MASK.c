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

/* Variables and functions */
 int /*<<< orphan*/  DDB_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ddb_class ; 
 int /*<<< orphan*/  ddb_fops ; 
 scalar_t__ ddb_major ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
	ddb_major = FUNC1(0, DDB_NAME, &ddb_fops);
	if (ddb_major < 0)
		return ddb_major;
	if (FUNC0(&ddb_class) < 0)
		return -1;
	return 0;
}