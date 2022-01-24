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
typedef  int u32 ;
struct cnic_id_tbl {int max; int next; int /*<<< orphan*/  lock; scalar_t__ start; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC5(struct cnic_id_tbl *id_tbl)
{
	u32 id;

	FUNC3(&id_tbl->lock);
	id = FUNC1(id_tbl->table, id_tbl->max, id_tbl->next);
	if (id >= id_tbl->max) {
		id = -1;
		if (id_tbl->next != 0) {
			id = FUNC0(id_tbl->table, id_tbl->next);
			if (id >= id_tbl->next)
				id = -1;
		}
	}

	if (id < id_tbl->max) {
		FUNC2(id, id_tbl->table);
		id_tbl->next = (id + 1) & (id_tbl->max - 1);
		id += id_tbl->start;
	}

	FUNC4(&id_tbl->lock);

	return id;
}