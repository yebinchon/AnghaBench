#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cxgb4_tc_u32_table {unsigned int size; struct cxgb4_link* table; } ;
struct cxgb4_link {struct cxgb4_tc_u32_table* tid_map; } ;
struct TYPE_2__ {unsigned int nftids; } ;
struct adapter {TYPE_1__ tids; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct cxgb4_tc_u32_table*,unsigned int) ; 
 struct cxgb4_tc_u32_table* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxgb4_tc_u32_table*) ; 
 struct cxgb4_tc_u32_table* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgb4_tc_u32_table*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  table ; 

struct cxgb4_tc_u32_table *FUNC6(struct adapter *adap)
{
	unsigned int max_tids = adap->tids.nftids;
	struct cxgb4_tc_u32_table *t;
	unsigned int i;

	if (!max_tids)
		return NULL;

	t = FUNC4(FUNC5(t, table, max_tids), GFP_KERNEL);
	if (!t)
		return NULL;

	t->size = max_tids;

	for (i = 0; i < t->size; i++) {
		struct cxgb4_link *link = &t->table[i];
		unsigned int bmap_size;

		bmap_size = FUNC0(max_tids);
		link->tid_map = FUNC2(bmap_size, sizeof(unsigned long),
					 GFP_KERNEL);
		if (!link->tid_map)
			goto out_no_mem;
		FUNC1(link->tid_map, max_tids);
	}

	return t;

out_no_mem:
	for (i = 0; i < t->size; i++) {
		struct cxgb4_link *link = &t->table[i];

		if (link->tid_map)
			FUNC3(link->tid_map);
	}

	if (t)
		FUNC3(t);

	return NULL;
}