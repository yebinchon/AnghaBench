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
typedef  int u16 ;
struct lbtf_private {int nr_of_multicastmacaddr; int /*<<< orphan*/  multicastlist; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_mac_multicast_addr {TYPE_1__ hdr; int /*<<< orphan*/  maclist; void* nr_of_adrs; void* action; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int CMD_ACT_SET ; 
 int /*<<< orphan*/  CMD_MAC_MULTICAST_ADR ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  LBTF_DEB_CMD ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lbtf_private*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct lbtf_private *priv)
{
	struct cmd_ds_mac_multicast_addr cmd;

	FUNC3(LBTF_DEB_CMD);

	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(CMD_ACT_SET);

	cmd.nr_of_adrs = FUNC0((u16) priv->nr_of_multicastmacaddr);

	FUNC2("MULTICAST_ADR: setting %d addresses\n", cmd.nr_of_adrs);

	FUNC5(cmd.maclist, priv->multicastlist,
	       priv->nr_of_multicastmacaddr * ETH_ALEN);

	FUNC1(priv, CMD_MAC_MULTICAST_ADR, &cmd.hdr, sizeof(cmd));

	FUNC4(LBTF_DEB_CMD);
	return 0;
}