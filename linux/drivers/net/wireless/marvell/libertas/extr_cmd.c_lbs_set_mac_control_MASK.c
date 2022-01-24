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
struct lbs_private {int mac_control; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_mac_control {TYPE_1__ hdr; scalar_t__ reserved; void* action; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_MAC_CONTROL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void FUNC2(struct lbs_private *priv)
{
	struct cmd_ds_mac_control cmd;

	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(priv->mac_control);
	cmd.reserved = 0;

	FUNC1(priv, CMD_MAC_CONTROL, &cmd.hdr, sizeof(cmd));
}