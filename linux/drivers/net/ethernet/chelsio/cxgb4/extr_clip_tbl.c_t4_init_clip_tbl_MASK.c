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
struct clip_tbl {unsigned int clipt_start; unsigned int clipt_size; int /*<<< orphan*/  ce_free_head; void* cl_list; int /*<<< orphan*/ * hash_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  nfree; } ;
struct clip_entry {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 unsigned int CLIPT_MIN_HASH_BUCKETS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  hash_list ; 
 struct clip_entry* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clip_tbl*) ; 
 struct clip_tbl* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct clip_tbl*,int /*<<< orphan*/ ,unsigned int) ; 

struct clip_tbl *FUNC8(unsigned int clipt_start,
				  unsigned int clipt_end)
{
	struct clip_entry *cl_list;
	struct clip_tbl *ctbl;
	unsigned int clipt_size;
	int i;

	if (clipt_start >= clipt_end)
		return NULL;
	clipt_size = clipt_end - clipt_start + 1;
	if (clipt_size < CLIPT_MIN_HASH_BUCKETS)
		return NULL;

	ctbl = FUNC4(FUNC7(ctbl, hash_list, clipt_size), GFP_KERNEL);
	if (!ctbl)
		return NULL;

	ctbl->clipt_start = clipt_start;
	ctbl->clipt_size = clipt_size;
	FUNC0(&ctbl->ce_free_head);

	FUNC1(&ctbl->nfree, clipt_size);
	FUNC6(&ctbl->lock);

	for (i = 0; i < ctbl->clipt_size; ++i)
		FUNC0(&ctbl->hash_list[i]);

	cl_list = FUNC2(clipt_size, sizeof(struct clip_entry), GFP_KERNEL);
	if (!cl_list) {
		FUNC3(ctbl);
		return NULL;
	}
	ctbl->cl_list = (void *)cl_list;

	for (i = 0; i < clipt_size; i++) {
		FUNC0(&cl_list[i].list);
		FUNC5(&cl_list[i].list, &ctbl->ce_free_head);
	}

	return ctbl;
}