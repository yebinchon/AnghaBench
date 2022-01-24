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
typedef  int /*<<< orphan*/  u32 ;
struct ofdpa_port {int dummy; } ;
struct TYPE_2__ {int pop_vlan; } ;
struct ofdpa_group_tbl_entry {TYPE_1__ l2_interface; int /*<<< orphan*/  group_id; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ofdpa_group_tbl_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ofdpa_port*,int,struct ofdpa_group_tbl_entry*) ; 

__attribute__((used)) static int FUNC3(struct ofdpa_port *ofdpa_port,
				    int flags, __be16 vlan_id,
				    u32 out_pport, int pop_vlan)
{
	struct ofdpa_group_tbl_entry *entry;

	entry = FUNC1(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	entry->group_id = FUNC0(vlan_id, out_pport);
	entry->l2_interface.pop_vlan = pop_vlan;

	return FUNC2(ofdpa_port, flags, entry);
}