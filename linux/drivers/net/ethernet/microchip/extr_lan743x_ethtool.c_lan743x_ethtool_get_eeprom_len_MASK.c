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
struct net_device {int dummy; } ;
struct lan743x_adapter {int flags; } ;

/* Variables and functions */
 int LAN743X_ADAPTER_FLAG_OTP ; 
 int MAX_EEPROM_SIZE ; 
 int MAX_OTP_SIZE ; 
 struct lan743x_adapter* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *netdev)
{
	struct lan743x_adapter *adapter = FUNC0(netdev);

	if (adapter->flags & LAN743X_ADAPTER_FLAG_OTP)
		return MAX_OTP_SIZE;

	return MAX_EEPROM_SIZE;
}