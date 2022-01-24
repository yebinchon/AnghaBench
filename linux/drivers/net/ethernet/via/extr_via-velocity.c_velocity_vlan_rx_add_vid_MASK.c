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
struct velocity_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  active_vlans; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct velocity_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct velocity_info*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				    __be16 proto, u16 vid)
{
	struct velocity_info *vptr = FUNC0(dev);

	FUNC2(&vptr->lock);
	FUNC1(vid, vptr->active_vlans);
	FUNC4(vptr);
	FUNC3(&vptr->lock);
	return 0;
}