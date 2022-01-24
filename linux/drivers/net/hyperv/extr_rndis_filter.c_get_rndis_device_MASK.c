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
struct rndis_device {int /*<<< orphan*/  state; int /*<<< orphan*/  mcast_work; int /*<<< orphan*/  req_list; int /*<<< orphan*/  request_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RNDIS_DEV_UNINITIALIZED ; 
 struct rndis_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rndis_set_multicast ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rndis_device *FUNC4(void)
{
	struct rndis_device *device;

	device = FUNC2(sizeof(struct rndis_device), GFP_KERNEL);
	if (!device)
		return NULL;

	FUNC3(&device->request_lock);

	FUNC0(&device->req_list);
	FUNC1(&device->mcast_work, rndis_set_multicast);

	device->state = RNDIS_DEV_UNINITIALIZED;

	return device;
}