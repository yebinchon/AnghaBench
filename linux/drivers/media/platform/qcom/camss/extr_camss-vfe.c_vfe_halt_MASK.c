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
struct vfe_device {TYPE_2__* camss; int /*<<< orphan*/  halt_complete; TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* halt_request ) (struct vfe_device*) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  VFE_HALT_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vfe_device*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vfe_device *vfe)
{
	unsigned long time;

	FUNC2(&vfe->halt_complete);

	vfe->ops->halt_request(vfe);

	time = FUNC4(&vfe->halt_complete,
		FUNC1(VFE_HALT_TIMEOUT_MS));
	if (!time) {
		FUNC0(vfe->camss->dev, "VFE halt timeout\n");
		return -EIO;
	}

	return 0;
}