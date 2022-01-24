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
struct vnic_dev {TYPE_1__* devcmd2; } ;
struct TYPE_2__ {int /*<<< orphan*/  wq; int /*<<< orphan*/  results_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct vnic_dev *vdev)
{
	FUNC1(vdev, &vdev->devcmd2->results_ring);
	FUNC2(&vdev->devcmd2->wq);
	FUNC3(&vdev->devcmd2->wq);
	FUNC0(vdev->devcmd2);
}