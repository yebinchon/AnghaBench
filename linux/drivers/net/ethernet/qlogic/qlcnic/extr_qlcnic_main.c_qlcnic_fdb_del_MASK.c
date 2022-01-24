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
typedef  int /*<<< orphan*/  u16 ;
struct qlcnic_adapter {int flags; int /*<<< orphan*/  fdb_mac_learn; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int QLCNIC_ESWITCH_ENABLED ; 
 int FUNC0 (struct net_device*,unsigned char const*) ; 
 int FUNC1 (struct net_device*,unsigned char const*) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 scalar_t__ FUNC3 (unsigned char const*) ; 
 int FUNC4 (struct ndmsg*,struct nlattr**,struct net_device*,unsigned char const*,int /*<<< orphan*/ ) ; 
 struct qlcnic_adapter* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct qlcnic_adapter*,unsigned char const*) ; 
 scalar_t__ FUNC7 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC8(struct ndmsg *ndm, struct nlattr *tb[],
			struct net_device *netdev,
			const unsigned char *addr, u16 vid)
{
	struct qlcnic_adapter *adapter = FUNC5(netdev);
	int err = -EOPNOTSUPP;

	if (!adapter->fdb_mac_learn)
		return FUNC4(ndm, tb, netdev, addr, vid);

	if ((adapter->flags & QLCNIC_ESWITCH_ENABLED) ||
	    FUNC7(adapter)) {
		if (FUNC3(addr)) {
			err = FUNC1(netdev, addr);
			if (!err)
				err = FUNC6(adapter, addr);
		} else if (FUNC2(addr)) {
			err = FUNC0(netdev, addr);
		} else {
			err =  -EINVAL;
		}
	}
	return err;
}