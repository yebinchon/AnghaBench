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
struct mwifiex_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_FW_DUMP_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC1(struct mwifiex_private *priv)
{
	FUNC0(priv, HostCmd_CMD_FW_DUMP_EVENT, HostCmd_ACT_GEN_SET,
			 0, NULL, true);
}