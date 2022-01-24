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
struct vxlan_net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  remote_ip; } ;
struct vxlan_dev {int /*<<< orphan*/  age_timer; TYPE_1__ default_dst; int /*<<< orphan*/  net; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vxlan_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vxlan_dev* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vxlan_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vxlan_net*,struct vxlan_dev*) ; 
 int FUNC6 (struct vxlan_dev*) ; 
 int /*<<< orphan*/  vxlan_net_id ; 
 int /*<<< orphan*/  FUNC7 (struct vxlan_dev*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct vxlan_dev *vxlan = FUNC2(dev);
	struct vxlan_net *vn = FUNC1(vxlan->net, vxlan_net_id);
	int ret = 0;

	if (FUNC3(&vxlan->default_dst.remote_ip) &&
	    !FUNC5(vn, vxlan))
		ret = FUNC6(vxlan);

	FUNC0(&vxlan->age_timer);

	FUNC4(vxlan, false);
	FUNC7(vxlan);

	return ret;
}