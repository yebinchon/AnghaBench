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
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DEINIT ; 
 int FUNC0 (struct vnic_dev*,int /*<<< orphan*/ ,int*) ; 

int FUNC1(struct vnic_dev *vdev, int *status)
{
	return FUNC0(vdev, CMD_DEINIT, status);
}