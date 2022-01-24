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
struct sja1105_l2_forwarding_params_entry {int /*<<< orphan*/ * part_spc; int /*<<< orphan*/  max_dynp; } ;
typedef  enum packing_op { ____Placeholder_packing_op } packing_op ;

/* Variables and functions */
 size_t SJA1105_SIZE_L2_FORWARDING_PARAMS_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int,int,size_t const,int) ; 

__attribute__((used)) static size_t
FUNC1(void *buf, void *entry_ptr,
					   enum packing_op op)
{
	const size_t size = SJA1105_SIZE_L2_FORWARDING_PARAMS_ENTRY;
	struct sja1105_l2_forwarding_params_entry *entry = entry_ptr;
	int offset, i;

	FUNC0(buf, &entry->max_dynp, 95, 93, size, op);
	for (i = 0, offset = 13; i < 8; i++, offset += 10)
		FUNC0(buf, &entry->part_spc[i],
				offset + 9, offset + 0, size, op);
	return size;
}