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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct atl2_adapter {int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_MAC_CTRL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl2_adapter*) ; 
 struct atl2_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev,
	netdev_features_t features)
{
	struct atl2_adapter *adapter = FUNC5(netdev);
	u32 ctrl;

	FUNC3(adapter);

	ctrl = FUNC0(&adapter->hw, REG_MAC_CTRL);
	FUNC2(features, &ctrl);
	FUNC1(&adapter->hw, REG_MAC_CTRL, ctrl);

	FUNC4(adapter);
}