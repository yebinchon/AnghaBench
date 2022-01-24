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
struct rocker_desc_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pop_vlan; } ;
struct ofdpa_group_tbl_entry {TYPE_1__ l2_interface; int /*<<< orphan*/  group_id; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROCKER_TLV_OF_DPA_OUT_PPORT ; 
 int /*<<< orphan*/  ROCKER_TLV_OF_DPA_POP_VLAN ; 
 scalar_t__ FUNC1 (struct rocker_desc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rocker_desc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct rocker_desc_info *desc_info,
				     struct ofdpa_group_tbl_entry *entry)
{
	if (FUNC1(desc_info, ROCKER_TLV_OF_DPA_OUT_PPORT,
			       FUNC0(entry->group_id)))
		return -EMSGSIZE;
	if (FUNC2(desc_info, ROCKER_TLV_OF_DPA_POP_VLAN,
			      entry->l2_interface.pop_vlan))
		return -EMSGSIZE;

	return 0;
}