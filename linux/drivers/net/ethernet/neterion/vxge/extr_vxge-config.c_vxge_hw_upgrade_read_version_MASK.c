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
typedef  int /*<<< orphan*/  u32 ;
struct __vxge_hw_virtualpath {int dummy; } ;
struct __vxge_hw_device {size_t first_vp_id; struct __vxge_hw_virtualpath* virtual_paths; } ;
typedef  enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;

/* Variables and functions */
 int /*<<< orphan*/  VXGE_HW_FW_UPGRADE_ACTION ; 
 int /*<<< orphan*/  VXGE_HW_FW_UPGRADE_MEMO ; 
 int /*<<< orphan*/  VXGE_HW_FW_UPGRADE_OFFSET_READ ; 
 int VXGE_HW_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct __vxge_hw_virtualpath*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

enum vxge_hw_status
FUNC4(struct __vxge_hw_device *hldev, u32 *major,
			     u32 *minor, u32 *build)
{
	u64 data0 = 0, data1 = 0, steer_ctrl = 0;
	struct __vxge_hw_virtualpath *vpath;
	enum vxge_hw_status status;

	vpath = &hldev->virtual_paths[hldev->first_vp_id];

	status = FUNC3(vpath,
				      VXGE_HW_FW_UPGRADE_ACTION,
				      VXGE_HW_FW_UPGRADE_MEMO,
				      VXGE_HW_FW_UPGRADE_OFFSET_READ,
				      &data0, &data1, &steer_ctrl);
	if (status != VXGE_HW_OK)
		return status;

	*major = FUNC1(data0);
	*minor = FUNC2(data0);
	*build = FUNC0(data0);

	return status;
}