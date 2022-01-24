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
struct sja1105_mac_config_entry {int /*<<< orphan*/  ingress; int /*<<< orphan*/  egress; int /*<<< orphan*/  dyn_learn; int /*<<< orphan*/  retag; int /*<<< orphan*/  drpuntag; int /*<<< orphan*/  drpdtag; int /*<<< orphan*/  drpnona664; int /*<<< orphan*/  egr_mirr; int /*<<< orphan*/  ing_mirr; int /*<<< orphan*/  vlanid; int /*<<< orphan*/  vlanprio; int /*<<< orphan*/  maxage; int /*<<< orphan*/  tp_delout; int /*<<< orphan*/  tp_delin; int /*<<< orphan*/  speed; int /*<<< orphan*/  ifg; int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; int /*<<< orphan*/ * enabled; } ;
typedef  enum packing_op { ____Placeholder_packing_op } packing_op ;

/* Variables and functions */
 size_t SJA1105PQRS_SIZE_MAC_CONFIG_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int,int,size_t const,int) ; 

size_t FUNC1(void *buf, void *entry_ptr,
					    enum packing_op op)
{
	const size_t size = SJA1105PQRS_SIZE_MAC_CONFIG_ENTRY;
	struct sja1105_mac_config_entry *entry = entry_ptr;
	int offset, i;

	for (i = 0, offset = 104; i < 8; i++, offset += 19) {
		FUNC0(buf, &entry->enabled[i],
				offset +  0, offset +  0, size, op);
		FUNC0(buf, &entry->base[i],
				offset +  9, offset +  1, size, op);
		FUNC0(buf, &entry->top[i],
				offset + 18, offset + 10, size, op);
	}
	FUNC0(buf, &entry->ifg,       103, 99, size, op);
	FUNC0(buf, &entry->speed,      98, 97, size, op);
	FUNC0(buf, &entry->tp_delin,   96, 81, size, op);
	FUNC0(buf, &entry->tp_delout,  80, 65, size, op);
	FUNC0(buf, &entry->maxage,     64, 57, size, op);
	FUNC0(buf, &entry->vlanprio,   56, 54, size, op);
	FUNC0(buf, &entry->vlanid,     53, 42, size, op);
	FUNC0(buf, &entry->ing_mirr,   41, 41, size, op);
	FUNC0(buf, &entry->egr_mirr,   40, 40, size, op);
	FUNC0(buf, &entry->drpnona664, 39, 39, size, op);
	FUNC0(buf, &entry->drpdtag,    38, 38, size, op);
	FUNC0(buf, &entry->drpuntag,   35, 35, size, op);
	FUNC0(buf, &entry->retag,      34, 34, size, op);
	FUNC0(buf, &entry->dyn_learn,  33, 33, size, op);
	FUNC0(buf, &entry->egress,     32, 32, size, op);
	FUNC0(buf, &entry->ingress,    31, 31, size, op);
	return size;
}