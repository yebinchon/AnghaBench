#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {unsigned long sizeimage; } ;
struct vimc_cap_device {TYPE_2__ vdev; int /*<<< orphan*/  dev; TYPE_1__ format; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 struct vimc_cap_device* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vb2_buffer *vb)
{
	struct vimc_cap_device *vcap = FUNC1(vb->vb2_queue);
	unsigned long size = vcap->format.sizeimage;

	if (FUNC2(vb, 0) < size) {
		FUNC0(vcap->dev, "%s: buffer too small (%lu < %lu)\n",
			vcap->vdev.name, FUNC2(vb, 0), size);
		return -EINVAL;
	}
	return 0;
}