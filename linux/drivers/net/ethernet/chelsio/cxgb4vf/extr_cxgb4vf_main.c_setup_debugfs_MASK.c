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
struct adapter {int /*<<< orphan*/  debugfs_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  fops; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 TYPE_1__* debugfs_files ; 

__attribute__((used)) static int FUNC4(struct adapter *adapter)
{
	int i;

	FUNC1(FUNC2(adapter->debugfs_root));

	/*
	 * Debugfs support is best effort.
	 */
	for (i = 0; i < FUNC0(debugfs_files); i++)
		FUNC3(debugfs_files[i].name,
				    debugfs_files[i].mode,
				    adapter->debugfs_root, (void *)adapter,
				    debugfs_files[i].fops);

	return 0;
}