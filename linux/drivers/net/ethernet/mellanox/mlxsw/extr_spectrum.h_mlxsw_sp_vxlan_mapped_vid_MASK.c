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
struct net_device {int dummy; } ;
struct bridge_vlan_info {int flags; } ;

/* Variables and functions */
 int BRIDGE_VLAN_INFO_UNTAGGED ; 
 int FUNC0 (struct net_device const*,scalar_t__,struct bridge_vlan_info*) ; 
 int FUNC1 (struct net_device const*,scalar_t__*) ; 

__attribute__((used)) static inline int
FUNC2(const struct net_device *vxlan_dev, u16 *p_vid)
{
	struct bridge_vlan_info vinfo;
	u16 vid = 0;
	int err;

	err = FUNC1(vxlan_dev, &vid);
	if (err || !vid)
		goto out;

	err = FUNC0(vxlan_dev, vid, &vinfo);
	if (err || !(vinfo.flags & BRIDGE_VLAN_INFO_UNTAGGED))
		vid = 0;

out:
	*p_vid = vid;
	return err;
}