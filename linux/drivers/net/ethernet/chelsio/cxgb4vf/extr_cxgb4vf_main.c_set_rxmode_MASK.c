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
struct port_info {int /*<<< orphan*/  viid; int /*<<< orphan*/  adapter; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxgb4vf_mac_sync ; 
 int /*<<< orphan*/  cxgb4vf_mac_unsync ; 
 struct port_info* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, int mtu, bool sleep_ok)
{
	struct port_info *pi = FUNC2(dev);

	FUNC1(dev, cxgb4vf_mac_sync, cxgb4vf_mac_unsync);
	FUNC0(dev, cxgb4vf_mac_sync, cxgb4vf_mac_unsync);
	return FUNC3(pi->adapter, pi->viid, -1,
			       (dev->flags & IFF_PROMISC) != 0,
			       (dev->flags & IFF_ALLMULTI) != 0,
			       1, -1, sleep_ok);
}