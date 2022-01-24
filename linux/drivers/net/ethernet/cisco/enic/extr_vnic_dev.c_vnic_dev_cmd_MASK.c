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
typedef  int /*<<< orphan*/  u64 ;
struct vnic_dev {int proxy; int /*<<< orphan*/  args; } ;
typedef  enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_PROXY_BY_BDF ; 
 int /*<<< orphan*/  CMD_PROXY_BY_INDEX ; 
#define  PROXY_BY_BDF 130 
#define  PROXY_BY_INDEX 129 
#define  PROXY_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct vnic_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct vnic_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC3(struct vnic_dev *vdev, enum vnic_devcmd_cmd cmd,
	u64 *a0, u64 *a1, int wait)
{
	FUNC0(vdev->args, 0, sizeof(vdev->args));

	switch (vdev->proxy) {
	case PROXY_BY_INDEX:
		return FUNC2(vdev, CMD_PROXY_BY_INDEX, cmd,
				a0, a1, wait);
	case PROXY_BY_BDF:
		return FUNC2(vdev, CMD_PROXY_BY_BDF, cmd,
				a0, a1, wait);
	case PROXY_NONE:
	default:
		return FUNC1(vdev, cmd, a0, a1, wait);
	}
}