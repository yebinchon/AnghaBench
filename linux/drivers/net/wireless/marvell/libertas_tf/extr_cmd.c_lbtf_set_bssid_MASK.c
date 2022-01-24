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
typedef  int /*<<< orphan*/  u8 ;
struct lbtf_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct cmd_ds_set_bssid {int activate; TYPE_1__ hdr; int /*<<< orphan*/  bssid; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_SET_BSSID ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  LBTF_DEB_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lbtf_private*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void FUNC5(struct lbtf_private *priv, bool activate, const u8 *bssid)
{
	struct cmd_ds_set_bssid cmd;
	FUNC2(LBTF_DEB_CMD);

	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.activate = activate ? 1 : 0;
	if (activate)
		FUNC4(cmd.bssid, bssid, ETH_ALEN);

	FUNC1(priv, CMD_802_11_SET_BSSID, &cmd.hdr, sizeof(cmd));
	FUNC3(LBTF_DEB_CMD);
}