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
struct mwifiex_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* down_dev ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {TYPE_1__ if_ops; int /*<<< orphan*/  fw_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_private*,int /*<<< orphan*/ *) ; 
 struct mwifiex_private* FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct mwifiex_adapter *adapter)
{
	struct mwifiex_private *priv;

	if (!adapter)
		return 0;

	FUNC5(adapter->fw_done);
	/* Caller should ensure we aren't suspending while this happens */
	FUNC3(adapter->fw_done);

	priv = FUNC1(adapter, MWIFIEX_BSS_ROLE_ANY);
	FUNC0(priv, NULL);

	FUNC2(adapter);

	if (adapter->if_ops.down_dev)
		adapter->if_ops.down_dev(adapter);

	return 0;
}