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
typedef  int /*<<< orphan*/  u16 ;
struct mwifiex_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_P2P_MODE_CFG ; 
 int /*<<< orphan*/  P2P_MODE_DISABLE ; 
 scalar_t__ FUNC0 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC1(struct mwifiex_private *priv)
{
	u16 mode = P2P_MODE_DISABLE;

	if (FUNC0(priv, HostCmd_CMD_P2P_MODE_CFG,
			     HostCmd_ACT_GEN_SET, 0, &mode, true))
		return -1;

	return 0;
}