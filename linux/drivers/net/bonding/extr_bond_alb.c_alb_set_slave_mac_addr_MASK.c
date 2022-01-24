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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_storage {int /*<<< orphan*/  ss_family; int /*<<< orphan*/  __data; } ;
struct sockaddr {int dummy; } ;
struct slave {TYPE_1__* bond; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  type; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ BOND_MODE_TLB ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC1 (struct net_device*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*,char*) ; 

__attribute__((used)) static int FUNC4(struct slave *slave, u8 addr[],
				  unsigned int len)
{
	struct net_device *dev = slave->dev;
	struct sockaddr_storage ss;

	if (FUNC0(slave->bond) == BOND_MODE_TLB) {
		FUNC2(dev->dev_addr, addr, len);
		return 0;
	}

	/* for rlb each slave must have a unique hw mac addresses so that
	 * each slave will receive packets destined to a different mac
	 */
	FUNC2(ss.__data, addr, len);
	ss.ss_family = dev->type;
	if (FUNC1(dev, (struct sockaddr *)&ss, NULL)) {
		FUNC3(slave->bond->dev, dev, "dev_set_mac_address on slave failed! ALB mode requires that the base driver support setting the hw address also when the network device's interface is open\n");
		return -EOPNOTSUPP;
	}
	return 0;
}