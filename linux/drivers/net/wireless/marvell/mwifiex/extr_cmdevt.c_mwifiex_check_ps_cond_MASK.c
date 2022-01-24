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
struct mwifiex_adapter {scalar_t__ curr_cmd; int /*<<< orphan*/  tx_hw_pending; scalar_t__ cmd_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 scalar_t__ FUNC0 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*) ; 

void
FUNC4(struct mwifiex_adapter *adapter)
{
	if (!adapter->cmd_sent && !FUNC1(&adapter->tx_hw_pending) &&
	    !adapter->curr_cmd && !FUNC0(adapter))
		FUNC3(adapter);
	else
		FUNC2(adapter, CMD,
			    "cmd: Delay Sleep Confirm (%s%s%s%s)\n",
			    (adapter->cmd_sent) ? "D" : "",
			    FUNC1(&adapter->tx_hw_pending) ? "T" : "",
			    (adapter->curr_cmd) ? "C" : "",
			    (FUNC0(adapter)) ? "R" : "");
}