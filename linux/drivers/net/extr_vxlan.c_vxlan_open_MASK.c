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
struct TYPE_4__ {scalar_t__ age_interval; } ;
struct TYPE_3__ {int /*<<< orphan*/  remote_ip; } ;
struct vxlan_dev {int /*<<< orphan*/  age_timer; TYPE_2__ cfg; TYPE_1__ default_dst; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 scalar_t__ FDB_AGE_INTERVAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct vxlan_dev* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vxlan_dev*) ; 
 int FUNC4 (struct vxlan_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct vxlan_dev*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct vxlan_dev *vxlan = FUNC1(dev);
	int ret;

	ret = FUNC4(vxlan);
	if (ret < 0)
		return ret;

	if (FUNC2(&vxlan->default_dst.remote_ip)) {
		ret = FUNC3(vxlan);
		if (ret == -EADDRINUSE)
			ret = 0;
		if (ret) {
			FUNC5(vxlan);
			return ret;
		}
	}

	if (vxlan->cfg.age_interval)
		FUNC0(&vxlan->age_timer, jiffies + FDB_AGE_INTERVAL);

	return ret;
}