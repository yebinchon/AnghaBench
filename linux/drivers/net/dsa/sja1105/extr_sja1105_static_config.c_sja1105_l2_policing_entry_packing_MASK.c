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
struct sja1105_l2_policing_entry {int /*<<< orphan*/  partition; int /*<<< orphan*/  maxlen; int /*<<< orphan*/  rate; int /*<<< orphan*/  smax; int /*<<< orphan*/  sharindx; } ;
typedef  enum packing_op { ____Placeholder_packing_op } packing_op ;

/* Variables and functions */
 size_t SJA1105_SIZE_L2_POLICING_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int,int,size_t const,int) ; 

__attribute__((used)) static size_t FUNC1(void *buf, void *entry_ptr,
						enum packing_op op)
{
	const size_t size = SJA1105_SIZE_L2_POLICING_ENTRY;
	struct sja1105_l2_policing_entry *entry = entry_ptr;

	FUNC0(buf, &entry->sharindx,  63, 58, size, op);
	FUNC0(buf, &entry->smax,      57, 42, size, op);
	FUNC0(buf, &entry->rate,      41, 26, size, op);
	FUNC0(buf, &entry->maxlen,    25, 15, size, op);
	FUNC0(buf, &entry->partition, 14, 12, size, op);
	return size;
}