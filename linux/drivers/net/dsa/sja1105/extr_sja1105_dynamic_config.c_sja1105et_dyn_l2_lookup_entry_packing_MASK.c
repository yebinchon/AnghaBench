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
typedef  int /*<<< orphan*/  u8 ;
struct sja1105_l2_lookup_entry {int /*<<< orphan*/  lockeds; } ;
typedef  enum packing_op { ____Placeholder_packing_op } packing_op ;

/* Variables and functions */
 int SJA1105ET_SIZE_L2_LOOKUP_ENTRY ; 
 int SJA1105_SIZE_DYN_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int const,int) ; 
 size_t FUNC1 (void*,void*,int) ; 

__attribute__((used)) static size_t FUNC2(void *buf, void *entry_ptr,
						    enum packing_op op)
{
	struct sja1105_l2_lookup_entry *entry = entry_ptr;
	u8 *cmd = buf + SJA1105ET_SIZE_L2_LOOKUP_ENTRY;
	const int size = SJA1105_SIZE_DYN_CMD;

	FUNC0(cmd, &entry->lockeds, 28, 28, size, op);

	return FUNC1(buf, entry_ptr, op);
}