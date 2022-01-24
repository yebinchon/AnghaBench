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
struct vxlan_net {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned long NETDEV_REGISTER ; 
 unsigned long NETDEV_UDP_TUNNEL_DROP_INFO ; 
 unsigned long NETDEV_UDP_TUNNEL_PUSH_INFO ; 
 unsigned long NETDEV_UNREGISTER ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct vxlan_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_net*,struct net_device*) ; 
 int /*<<< orphan*/  vxlan_net_id ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *unused,
				 unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC2(ptr);
	struct vxlan_net *vn = FUNC1(FUNC0(dev), vxlan_net_id);

	if (event == NETDEV_UNREGISTER) {
		FUNC4(dev, false);
		FUNC3(vn, dev);
	} else if (event == NETDEV_REGISTER) {
		FUNC4(dev, true);
	} else if (event == NETDEV_UDP_TUNNEL_PUSH_INFO ||
		   event == NETDEV_UDP_TUNNEL_DROP_INFO) {
		FUNC4(dev, event == NETDEV_UDP_TUNNEL_PUSH_INFO);
	}

	return NOTIFY_DONE;
}