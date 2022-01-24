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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct lan743x_adapter {int flags; } ;
struct ethtool_eeprom {int /*<<< orphan*/  len; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int LAN743X_ADAPTER_FLAG_OTP ; 
 int FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lan743x_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
				      struct ethtool_eeprom *ee, u8 *data)
{
	struct lan743x_adapter *adapter = FUNC2(netdev);
	int ret = 0;

	if (adapter->flags & LAN743X_ADAPTER_FLAG_OTP)
		ret = FUNC1(adapter, ee->offset, ee->len, data);
	else
		ret = FUNC0(adapter, ee->offset, ee->len, data);

	return ret;
}