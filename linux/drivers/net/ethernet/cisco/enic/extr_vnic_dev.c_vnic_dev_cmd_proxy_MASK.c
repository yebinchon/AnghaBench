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
typedef  void* u64 ;
typedef  int u32 ;
struct vnic_dev {int* args; int proxy_index; int (* devcmd_rtn ) (struct vnic_dev*,int,int) ;} ;
typedef  enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;

/* Variables and functions */
 int CMD_CAPABILITY ; 
 int ERR_ECMDUNKNOWN ; 
 int STAT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct vnic_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vnic_dev*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vnic_dev *vdev,
	enum vnic_devcmd_cmd proxy_cmd, enum vnic_devcmd_cmd cmd,
	u64 *a0, u64 *a1, int wait)
{
	u32 status;
	int err;

	FUNC1(vdev->args, 0, sizeof(vdev->args));

	vdev->args[0] = vdev->proxy_index;
	vdev->args[1] = cmd;
	vdev->args[2] = *a0;
	vdev->args[3] = *a1;

	err = vdev->devcmd_rtn(vdev, proxy_cmd, wait);
	if (err)
		return err;

	status = (u32)vdev->args[0];
	if (status & STAT_ERROR) {
		err = (int)vdev->args[1];
		if (err != ERR_ECMDUNKNOWN ||
		    cmd != CMD_CAPABILITY)
			FUNC3(vdev, "Error %d proxy devcmd %d\n",
				    err, FUNC0(cmd));
		return err;
	}

	*a0 = vdev->args[1];
	*a1 = vdev->args[2];

	return 0;
}