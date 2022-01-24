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
struct compressor_entry {int /*<<< orphan*/  list; struct compressor* comp; } ;
struct compressor {int /*<<< orphan*/  compress_proto; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  compressor_list ; 
 int /*<<< orphan*/  compressor_list_lock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct compressor_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct compressor *cp)
{
	struct compressor_entry *ce;
	int ret;
	FUNC3(&compressor_list_lock);
	ret = -EEXIST;
	if (FUNC0(cp->compress_proto))
		goto out;
	ret = -ENOMEM;
	ce = FUNC1(sizeof(struct compressor_entry), GFP_ATOMIC);
	if (!ce)
		goto out;
	ret = 0;
	ce->comp = cp;
	FUNC2(&ce->list, &compressor_list);
 out:
	FUNC4(&compressor_list_lock);
	return ret;
}