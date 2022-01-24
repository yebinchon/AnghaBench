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
struct vxlan_dev {int dummy; } ;
struct vxlan_config {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct vxlan_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct vxlan_config*,struct net_device*,struct net*,int) ; 
 int FUNC2 (struct net*,struct vxlan_config*,struct net_device**,struct vxlan_dev*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC3(struct net *src_net, struct net_device *dev,
			       struct vxlan_config *conf, bool changelink,
			       struct netlink_ext_ack *extack)
{
	struct vxlan_dev *vxlan = FUNC0(dev);
	struct net_device *lowerdev;
	int ret;

	ret = FUNC2(src_net, conf, &lowerdev, vxlan, extack);
	if (ret)
		return ret;

	FUNC1(dev, conf, lowerdev, src_net, changelink);

	return 0;
}