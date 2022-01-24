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
struct sja1105_vlan_lookup_entry {int /*<<< orphan*/  vlanid; int /*<<< orphan*/  tag_port; int /*<<< orphan*/  vlan_bc; int /*<<< orphan*/  vmemb_port; int /*<<< orphan*/  vegr_mirr; int /*<<< orphan*/  ving_mirr; } ;
typedef  enum packing_op { ____Placeholder_packing_op } packing_op ;

/* Variables and functions */
 size_t SJA1105_SIZE_VLAN_LOOKUP_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int,int,size_t const,int) ; 

size_t FUNC1(void *buf, void *entry_ptr,
					 enum packing_op op)
{
	const size_t size = SJA1105_SIZE_VLAN_LOOKUP_ENTRY;
	struct sja1105_vlan_lookup_entry *entry = entry_ptr;

	FUNC0(buf, &entry->ving_mirr,  63, 59, size, op);
	FUNC0(buf, &entry->vegr_mirr,  58, 54, size, op);
	FUNC0(buf, &entry->vmemb_port, 53, 49, size, op);
	FUNC0(buf, &entry->vlan_bc,    48, 44, size, op);
	FUNC0(buf, &entry->tag_port,   43, 39, size, op);
	FUNC0(buf, &entry->vlanid,     38, 27, size, op);
	return size;
}