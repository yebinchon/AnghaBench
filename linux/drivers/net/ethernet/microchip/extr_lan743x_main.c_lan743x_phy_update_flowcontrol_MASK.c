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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct lan743x_phy {int fc_request_control; scalar_t__ fc_autoneg; } ;
struct lan743x_adapter {struct lan743x_phy phy; } ;

/* Variables and functions */
 int FLOW_CTRL_RX ; 
 int FLOW_CTRL_TX ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct lan743x_adapter *adapter,
					   u8 duplex, u16 local_adv,
					   u16 remote_adv)
{
	struct lan743x_phy *phy = &adapter->phy;
	u8 cap;

	if (phy->fc_autoneg)
		cap = FUNC1(local_adv, remote_adv);
	else
		cap = phy->fc_request_control;

	FUNC0(adapter,
					  cap & FLOW_CTRL_TX,
					  cap & FLOW_CTRL_RX);
}