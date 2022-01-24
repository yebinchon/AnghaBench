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
struct port_info {int /*<<< orphan*/  adapter; int /*<<< orphan*/  xact_addr_filt; int /*<<< orphan*/  viid; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int FUNC0 (struct port_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct port_info* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct port_info*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	int ret;
	struct port_info *pi = FUNC1(dev);

	/*
	 * We do not set address filters and promiscuity here, the stack does
	 * that step explicitly. Enable vlan accel.
	 */
	ret = FUNC3(pi->adapter, pi->viid, dev->mtu, -1, -1, -1, 1,
			      true);
	if (ret == 0)
		ret = FUNC0(pi, pi->viid,
					 &pi->xact_addr_filt,
					 dev->dev_addr, true);

	/*
	 * We don't need to actually "start the link" itself since the
	 * firmware will do that for us when the first Virtual Interface
	 * is enabled on a port.
	 */
	if (ret == 0)
		ret = FUNC2(pi->adapter, pi, true, true);

	return ret;
}