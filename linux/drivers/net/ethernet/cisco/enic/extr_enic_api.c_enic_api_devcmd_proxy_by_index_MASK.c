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
struct vnic_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct enic {int /*<<< orphan*/  enic_api_lock; int /*<<< orphan*/  devcmd_lock; struct vnic_dev* vdev; } ;
typedef  enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;

/* Variables and functions */
 struct enic* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vnic_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vnic_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vnic_dev*) ; 

int FUNC8(struct net_device *netdev, int vf,
	enum vnic_devcmd_cmd cmd, u64 *a0, u64 *a1, int wait)
{
	int err;
	struct enic *enic = FUNC0(netdev);
	struct vnic_dev *vdev = enic->vdev;

	FUNC1(&enic->enic_api_lock);
	FUNC2(&enic->devcmd_lock);

	FUNC6(vdev, vf);
	err = FUNC5(vdev, cmd, a0, a1, wait);
	FUNC7(vdev);

	FUNC4(&enic->devcmd_lock);
	FUNC3(&enic->enic_api_lock);

	return err;
}