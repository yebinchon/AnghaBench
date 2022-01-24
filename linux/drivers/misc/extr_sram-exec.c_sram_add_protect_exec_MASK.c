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
struct sram_partition {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  exec_pool_list ; 
 int /*<<< orphan*/  exec_pool_list_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct sram_partition *part)
{
	FUNC1(&exec_pool_list_mutex);
	FUNC0(&part->list, &exec_pool_list);
	FUNC2(&exec_pool_list_mutex);

	return 0;
}