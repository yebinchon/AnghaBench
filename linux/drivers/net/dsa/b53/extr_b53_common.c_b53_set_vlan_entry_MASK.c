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
typedef  int u32 ;
typedef  int u16 ;
struct b53_vlan {int members; int untag; } ;
struct b53_device {int core_rev; TYPE_1__* ds; int /*<<< orphan*/ * vta_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_ARLIO_PAGE ; 
 int /*<<< orphan*/  B53_VLAN_PAGE ; 
 int /*<<< orphan*/  B53_VLAN_TABLE_ACCESS_25 ; 
 int /*<<< orphan*/  B53_VLAN_TABLE_ACCESS_65 ; 
 int /*<<< orphan*/  B53_VLAN_WRITE_25 ; 
 int /*<<< orphan*/  B53_VLAN_WRITE_65 ; 
 int VA_UNTAG_MASK_25 ; 
 int VA_UNTAG_MASK_65 ; 
 int VA_UNTAG_S_25 ; 
 int VA_UNTAG_S_65 ; 
 int VA_VALID_25 ; 
 int VA_VALID_25_R4 ; 
 int VA_VALID_65 ; 
 int VA_VID_HIGH_S ; 
 int /*<<< orphan*/  VTA_CMD_WRITE ; 
 int VTA_RW_OP_EN ; 
 int VTA_RW_STATE_WR ; 
 int VTE_UNTAG_S ; 
 int /*<<< orphan*/  FUNC0 (struct b53_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 scalar_t__ FUNC4 (struct b53_device*) ; 
 scalar_t__ FUNC5 (struct b53_device*) ; 

__attribute__((used)) static void FUNC6(struct b53_device *dev, u16 vid,
			       struct b53_vlan *vlan)
{
	if (FUNC4(dev)) {
		u32 entry = 0;

		if (vlan->members) {
			entry = ((vlan->untag & VA_UNTAG_MASK_25) <<
				 VA_UNTAG_S_25) | vlan->members;
			if (dev->core_rev >= 3)
				entry |= VA_VALID_25_R4 | vid << VA_VID_HIGH_S;
			else
				entry |= VA_VALID_25;
		}

		FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_WRITE_25, entry);
		FUNC1(dev, B53_VLAN_PAGE, B53_VLAN_TABLE_ACCESS_25, vid |
			    VTA_RW_STATE_WR | VTA_RW_OP_EN);
	} else if (FUNC5(dev)) {
		u16 entry = 0;

		if (vlan->members)
			entry = ((vlan->untag & VA_UNTAG_MASK_65) <<
				 VA_UNTAG_S_65) | vlan->members | VA_VALID_65;

		FUNC1(dev, B53_VLAN_PAGE, B53_VLAN_WRITE_65, entry);
		FUNC1(dev, B53_VLAN_PAGE, B53_VLAN_TABLE_ACCESS_65, vid |
			    VTA_RW_STATE_WR | VTA_RW_OP_EN);
	} else {
		FUNC1(dev, B53_ARLIO_PAGE, dev->vta_regs[1], vid);
		FUNC2(dev, B53_ARLIO_PAGE, dev->vta_regs[2],
			    (vlan->untag << VTE_UNTAG_S) | vlan->members);

		FUNC0(dev, VTA_CMD_WRITE);
	}

	FUNC3(dev->ds->dev, "VID: %d, members: 0x%04x, untag: 0x%04x\n",
		vid, vlan->members, vlan->untag);
}