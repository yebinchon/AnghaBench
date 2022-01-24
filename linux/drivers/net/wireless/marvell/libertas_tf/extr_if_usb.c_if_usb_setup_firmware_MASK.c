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
struct lbtf_private {struct if_usb_card* card; } ;
struct if_usb_card {int /*<<< orphan*/  boot2_version; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct cmd_ds_set_boot2_ver {int /*<<< orphan*/  version; scalar_t__ action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  b2_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_BOOT2_VER ; 
 int /*<<< orphan*/  LBTF_DEB_USB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct if_usb_card*) ; 
 scalar_t__ FUNC2 (struct lbtf_private*,int /*<<< orphan*/ ,struct cmd_ds_set_boot2_ver*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct lbtf_private *priv)
{
	struct if_usb_card *cardp = priv->card;
	struct cmd_ds_set_boot2_ver b2_cmd;

	FUNC3(LBTF_DEB_USB);

	FUNC1(cardp);
	b2_cmd.hdr.size = FUNC0(sizeof(b2_cmd));
	b2_cmd.action = 0;
	b2_cmd.version = cardp->boot2_version;

	if (FUNC2(priv, CMD_SET_BOOT2_VER, &b2_cmd))
		FUNC5("Setting boot2 version failed\n");

	FUNC4(LBTF_DEB_USB);
}