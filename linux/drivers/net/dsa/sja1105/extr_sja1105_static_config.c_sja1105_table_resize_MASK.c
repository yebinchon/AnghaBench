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
struct sja1105_table {size_t entry_count; void* entries; TYPE_1__* ops; } ;
struct TYPE_2__ {size_t unpacked_entry_size; size_t max_entry_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 size_t FUNC3 (size_t,size_t) ; 

int FUNC4(struct sja1105_table *table, size_t new_count)
{
	size_t entry_size = table->ops->unpacked_entry_size;
	void *new_entries, *old_entries = table->entries;

	if (new_count > table->ops->max_entry_count)
		return -ERANGE;

	new_entries = FUNC0(new_count, entry_size, GFP_KERNEL);
	if (!new_entries)
		return -ENOMEM;

	FUNC2(new_entries, old_entries, FUNC3(new_count, table->entry_count) *
		entry_size);

	table->entries = new_entries;
	table->entry_count = new_count;
	FUNC1(old_entries);
	return 0;
}