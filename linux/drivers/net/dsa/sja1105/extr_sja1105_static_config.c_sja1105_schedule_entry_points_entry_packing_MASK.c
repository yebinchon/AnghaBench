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
struct sja1105_schedule_entry_points_entry {int /*<<< orphan*/  address; int /*<<< orphan*/  delta; int /*<<< orphan*/  subschindx; } ;
typedef  enum packing_op { ____Placeholder_packing_op } packing_op ;

/* Variables and functions */
 size_t SJA1105_SIZE_SCHEDULE_ENTRY_POINTS_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int,int,size_t const,int) ; 

__attribute__((used)) static size_t
FUNC1(void *buf, void *entry_ptr,
					    enum packing_op op)
{
	struct sja1105_schedule_entry_points_entry *entry = entry_ptr;
	const size_t size = SJA1105_SIZE_SCHEDULE_ENTRY_POINTS_ENTRY;

	FUNC0(buf, &entry->subschindx, 31, 29, size, op);
	FUNC0(buf, &entry->delta,      28, 11, size, op);
	FUNC0(buf, &entry->address,    10, 1,  size, op);
	return size;
}