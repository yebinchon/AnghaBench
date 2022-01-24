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
struct ixgbe_adapter {TYPE_1__* vfinfo; } ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {int /*<<< orphan*/  vf_mac_addresses; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (struct ixgbe_adapter*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ixgbe_adapter *adapter,
			    int vf, unsigned char *mac_addr)
{
	s32 retval;

	FUNC1(adapter, adapter->vfinfo[vf].vf_mac_addresses, vf);
	retval = FUNC0(adapter, mac_addr, vf);
	if (retval >= 0)
		FUNC2(adapter->vfinfo[vf].vf_mac_addresses, mac_addr,
		       ETH_ALEN);
	else
		FUNC3(adapter->vfinfo[vf].vf_mac_addresses, 0, ETH_ALEN);

	return retval;
}