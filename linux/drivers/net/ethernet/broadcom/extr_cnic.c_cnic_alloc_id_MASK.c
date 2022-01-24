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
typedef  scalar_t__ u32 ;
struct cnic_id_tbl {scalar_t__ start; scalar_t__ max; int /*<<< orphan*/  lock; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cnic_id_tbl *id_tbl, u32 id)
{
	int ret = -1;

	id -= id_tbl->start;
	if (id >= id_tbl->max)
		return ret;

	FUNC1(&id_tbl->lock);
	if (!FUNC3(id, id_tbl->table)) {
		FUNC0(id, id_tbl->table);
		ret = 0;
	}
	FUNC2(&id_tbl->lock);
	return ret;
}