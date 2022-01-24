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
typedef  scalar_t__ u16 ;
struct switchdev_trans {int dummy; } ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; int flags; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int BRIDGE_VLAN_INFO_PVID ; 
 int BRIDGE_VLAN_INFO_UNTAGGED ; 
 int FUNC0 (struct net_device*,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev,
				    const struct switchdev_obj_port_vlan *vlan,
				    struct switchdev_trans *trans)
{
	int ret;
	u16 vid;

	for (vid = vlan->vid_begin; vid <= vlan->vid_end; vid++) {
		ret = FUNC0(dev, vid,
					  vlan->flags & BRIDGE_VLAN_INFO_PVID,
					  vlan->flags & BRIDGE_VLAN_INFO_UNTAGGED);
		if (ret)
			return ret;
	}

	return 0;
}