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
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct net_device*,unsigned long,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,struct net_device*,unsigned long,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,struct net_device*,unsigned long,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 struct net_device* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *vlan_dev,
					 unsigned long event, void *ptr)
{
	struct net_device *real_dev = FUNC6(vlan_dev);
	u16 vid = FUNC7(vlan_dev);

	if (FUNC3(real_dev))
		return FUNC2(vlan_dev, real_dev,
							  event, ptr, vid);
	else if (FUNC5(real_dev))
		return FUNC1(vlan_dev,
							      real_dev, event,
							      ptr, vid);
	else if (FUNC4(real_dev))
		return FUNC0(vlan_dev, real_dev,
							    event, ptr, vid);

	return 0;
}