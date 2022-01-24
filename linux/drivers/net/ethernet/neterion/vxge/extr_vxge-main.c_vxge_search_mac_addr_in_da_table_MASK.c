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
struct vxge_vpath {int /*<<< orphan*/  handle; int /*<<< orphan*/  device_id; } ;
struct macInfo {int /*<<< orphan*/  macaddr; } ;
typedef  enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  VXGE_ERR ; 
 int VXGE_HW_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 

__attribute__((used)) static enum vxge_hw_status
FUNC4(struct vxge_vpath *vpath, struct macInfo *mac)
{
	enum vxge_hw_status status = VXGE_HW_OK;
	unsigned char macmask[ETH_ALEN];
	unsigned char macaddr[ETH_ALEN];

	status = FUNC2(vpath->handle,
				macaddr, macmask);
	if (status != VXGE_HW_OK) {
		FUNC1(VXGE_ERR,
			"DA config list entry failed for vpath:%d",
			vpath->device_id);
		return status;
	}

	while (!FUNC0(mac->macaddr, macaddr)) {
		status = FUNC3(vpath->handle,
				macaddr, macmask);
		if (status != VXGE_HW_OK)
			break;
	}

	return status;
}