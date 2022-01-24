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
struct ixgbe_adapter {int /*<<< orphan*/  ixgbe_dbg_adapter; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct ixgbe_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ixgbe_dbg_netdev_ops_fops ; 
 int /*<<< orphan*/  ixgbe_dbg_reg_ops_fops ; 
 int /*<<< orphan*/  ixgbe_dbg_root ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct ixgbe_adapter *adapter)
{
	const char *name = FUNC2(adapter->pdev);

	adapter->ixgbe_dbg_adapter = FUNC0(name, ixgbe_dbg_root);
	FUNC1("reg_ops", 0600, adapter->ixgbe_dbg_adapter,
			    adapter, &ixgbe_dbg_reg_ops_fops);
	FUNC1("netdev_ops", 0600, adapter->ixgbe_dbg_adapter,
			    adapter, &ixgbe_dbg_netdev_ops_fops);
}