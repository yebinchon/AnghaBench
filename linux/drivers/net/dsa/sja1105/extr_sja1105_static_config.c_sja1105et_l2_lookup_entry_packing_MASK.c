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
struct sja1105_l2_lookup_entry {int /*<<< orphan*/  index; int /*<<< orphan*/  enfport; int /*<<< orphan*/  destports; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  vlanid; } ;
typedef  enum packing_op { ____Placeholder_packing_op } packing_op ;

/* Variables and functions */
 size_t SJA1105ET_SIZE_L2_LOOKUP_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int,int,size_t const,int) ; 

size_t FUNC1(void *buf, void *entry_ptr,
					 enum packing_op op)
{
	const size_t size = SJA1105ET_SIZE_L2_LOOKUP_ENTRY;
	struct sja1105_l2_lookup_entry *entry = entry_ptr;

	FUNC0(buf, &entry->vlanid,    95, 84, size, op);
	FUNC0(buf, &entry->macaddr,   83, 36, size, op);
	FUNC0(buf, &entry->destports, 35, 31, size, op);
	FUNC0(buf, &entry->enfport,   30, 30, size, op);
	FUNC0(buf, &entry->index,     29, 20, size, op);
	return size;
}