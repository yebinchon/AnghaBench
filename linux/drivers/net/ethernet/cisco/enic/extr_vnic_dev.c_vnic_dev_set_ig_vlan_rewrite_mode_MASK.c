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
typedef  int /*<<< orphan*/  u64 ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_IG_VLAN_REWRITE_MODE ; 
 scalar_t__ FUNC0 (struct vnic_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vnic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct vnic_dev *vdev,
	u8 ig_vlan_rewrite_mode)
{
	u64 a0 = ig_vlan_rewrite_mode, a1 = 0;
	int wait = 1000;

	if (FUNC0(vdev, CMD_IG_VLAN_REWRITE_MODE))
		return FUNC1(vdev, CMD_IG_VLAN_REWRITE_MODE,
				&a0, &a1, wait);
	else
		return 0;
}