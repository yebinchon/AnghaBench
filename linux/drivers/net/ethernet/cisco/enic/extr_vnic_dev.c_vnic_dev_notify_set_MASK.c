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
typedef  int /*<<< orphan*/  u16 ;
struct vnic_devcmd_notify {int dummy; } ;
struct vnic_dev {int /*<<< orphan*/  pdev; scalar_t__ notify; scalar_t__ notify_pa; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_dev*,char*,scalar_t__) ; 
 int FUNC2 (struct vnic_dev*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct vnic_dev *vdev, u16 intr)
{
	void *notify_addr;
	dma_addr_t notify_pa;

	if (vdev->notify || vdev->notify_pa) {
		FUNC1(vdev, "notify block %p still allocated\n",
			    vdev->notify);
		return -EINVAL;
	}

	notify_addr = FUNC0(vdev->pdev,
			sizeof(struct vnic_devcmd_notify),
			&notify_pa);
	if (!notify_addr)
		return -ENOMEM;

	return FUNC2(vdev, notify_addr, notify_pa, intr);
}