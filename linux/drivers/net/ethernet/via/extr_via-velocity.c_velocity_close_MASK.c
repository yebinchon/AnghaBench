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
struct velocity_info {int flags; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int VELOCITY_FLAGS_OPENED ; 
 int VELOCITY_FLAGS_WOL_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct velocity_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct velocity_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct velocity_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct velocity_info*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct velocity_info *vptr = FUNC2(dev);

	FUNC1(&vptr->napi);
	FUNC3(dev);
	FUNC6(vptr);

	if (vptr->flags & VELOCITY_FLAGS_WOL_ENABLED)
		FUNC5(vptr);

	FUNC0(dev->irq, dev);

	FUNC4(vptr);

	vptr->flags &= (~VELOCITY_FLAGS_OPENED);
	return 0;
}