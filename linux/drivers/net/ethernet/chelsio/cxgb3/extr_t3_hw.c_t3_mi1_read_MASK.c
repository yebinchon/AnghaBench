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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MI1_ADDR ; 
 int /*<<< orphan*/  A_MI1_CFG ; 
 int /*<<< orphan*/  A_MI1_DATA ; 
 int /*<<< orphan*/  A_MI1_OP ; 
 int /*<<< orphan*/  F_BUSY ; 
 int /*<<< orphan*/  MDIO_ATTEMPTS ; 
 int M_ST ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct port_info* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, int phy_addr, int mmd_addr,
		       u16 reg_addr)
{
	struct port_info *pi = FUNC6(dev);
	struct adapter *adapter = pi->adapter;
	int ret;
	u32 addr = FUNC2(reg_addr) | FUNC1(phy_addr);

	FUNC4(&adapter->mdio_lock);
	FUNC8(adapter, A_MI1_CFG, FUNC3(M_ST), FUNC3(1));
	FUNC10(adapter, A_MI1_ADDR, addr);
	FUNC10(adapter, A_MI1_OP, FUNC0(2));
	ret = FUNC9(adapter, A_MI1_OP, F_BUSY, 0, MDIO_ATTEMPTS, 10);
	if (!ret)
		ret = FUNC7(adapter, A_MI1_DATA);
	FUNC5(&adapter->mdio_lock);
	return ret;
}