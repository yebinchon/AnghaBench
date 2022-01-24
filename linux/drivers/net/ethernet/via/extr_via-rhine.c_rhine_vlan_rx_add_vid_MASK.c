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
struct rhine_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  active_vlans; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct rhine_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, __be16 proto, u16 vid)
{
	struct rhine_private *rp = FUNC0(dev);

	FUNC3(&rp->lock);
	FUNC2(vid, rp->active_vlans);
	FUNC1(dev);
	FUNC4(&rp->lock);
	return 0;
}