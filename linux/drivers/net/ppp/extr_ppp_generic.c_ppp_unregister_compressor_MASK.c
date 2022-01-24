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
 int /*<<< orphan*/  compressor_list_lock ; 
 struct compressor_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct compressor_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct compressor *cp)
{
	struct compressor_entry *ce;

	FUNC3(&compressor_list_lock);
	ce = FUNC0(cp->compress_proto);
	if (ce && ce->comp == cp) {
		FUNC2(&ce->list);
		FUNC1(ce);
	}
	FUNC4(&compressor_list_lock);
}