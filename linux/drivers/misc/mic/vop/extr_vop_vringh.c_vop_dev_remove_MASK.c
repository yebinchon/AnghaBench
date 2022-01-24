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
struct vop_info {int dummy; } ;
struct vop_device {TYPE_1__* hw_ops; } ;
struct mic_device_ctrl {scalar_t__ guest_ack; scalar_t__ config_change; } ;
struct mic_bootparam {int h2c_config_db; } ;
typedef  int s8 ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_intr ) (struct vop_device*,int) ;struct mic_bootparam* (* get_dp ) (struct vop_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MIC_VIRTIO_PARAM_DEV_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mic_bootparam* FUNC2 (struct vop_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct vop_device*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wake ; 

__attribute__((used)) static void FUNC5(struct vop_info *pvi, struct mic_device_ctrl *devp,
			   struct vop_device *vpdev)
{
	struct mic_bootparam *bootparam = vpdev->hw_ops->get_dp(vpdev);
	s8 db;
	int ret, retry;
	FUNC0(wake);

	devp->config_change = MIC_VIRTIO_PARAM_DEV_REMOVE;
	db = bootparam->h2c_config_db;
	if (db != -1)
		vpdev->hw_ops->send_intr(vpdev, db);
	else
		goto done;
	for (retry = 15; retry--;) {
		ret = FUNC4(wake, devp->guest_ack,
					 FUNC1(1000));
		if (ret)
			break;
	}
done:
	devp->config_change = 0;
	devp->guest_ack = 0;
}