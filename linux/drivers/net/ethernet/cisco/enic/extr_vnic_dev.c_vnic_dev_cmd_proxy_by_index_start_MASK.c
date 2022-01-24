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
struct vnic_dev {int /*<<< orphan*/  proxy_index; int /*<<< orphan*/  proxy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROXY_BY_INDEX ; 

void FUNC0(struct vnic_dev *vdev, u16 index)
{
	vdev->proxy = PROXY_BY_INDEX;
	vdev->proxy_index = index;
}