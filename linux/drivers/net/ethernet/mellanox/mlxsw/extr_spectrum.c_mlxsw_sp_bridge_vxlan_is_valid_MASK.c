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
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static bool FUNC5(struct net_device *br_dev,
					   struct netlink_ext_ack *extack)
{
	if (FUNC1(br_dev)) {
		FUNC0(extack, "Multicast can not be enabled on a bridge with a VxLAN device");
		return false;
	}

	if (!FUNC2(br_dev) &&
	    FUNC3(br_dev)) {
		FUNC0(extack, "Multiple VxLAN devices are not supported in a VLAN-unaware bridge");
		return false;
	}

	if (FUNC2(br_dev) &&
	    !FUNC4(br_dev)) {
		FUNC0(extack, "Multiple VxLAN devices cannot have the same VLAN as PVID and egress untagged");
		return false;
	}

	return true;
}