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
struct vnic_stats {int dummy; } ;
struct vnic_devcmd_notify {int dummy; } ;
struct vnic_devcmd_fw_info {int dummy; } ;
struct vnic_dev {scalar_t__ devcmd2; int /*<<< orphan*/  fw_info_pa; scalar_t__ fw_info; int /*<<< orphan*/  pdev; int /*<<< orphan*/  stats_pa; scalar_t__ stats; int /*<<< orphan*/  notify_pa; scalar_t__ notify; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnic_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_dev*) ; 

void FUNC3(struct vnic_dev *vdev)
{
	if (vdev) {
		if (vdev->notify)
			FUNC1(vdev->pdev,
				sizeof(struct vnic_devcmd_notify),
				vdev->notify,
				vdev->notify_pa);
		if (vdev->stats)
			FUNC1(vdev->pdev,
				sizeof(struct vnic_stats),
				vdev->stats, vdev->stats_pa);
		if (vdev->fw_info)
			FUNC1(vdev->pdev,
				sizeof(struct vnic_devcmd_fw_info),
				vdev->fw_info, vdev->fw_info_pa);
		if (vdev->devcmd2)
			FUNC2(vdev);

		FUNC0(vdev);
	}
}