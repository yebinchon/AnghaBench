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
struct if_usb_card {int /*<<< orphan*/  udev; struct cmd_header* ep_out_buf; } ;
struct cmd_header {void* seqnum; void* result; void* size; void* command; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int CMD_802_11_RESET ; 
 int /*<<< orphan*/  CMD_TYPE_REQUEST ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct if_usb_card*,struct cmd_header*,int) ; 

__attribute__((used)) static int FUNC7(struct if_usb_card *cardp)
{
	struct cmd_header *cmd = cardp->ep_out_buf + 4;
	int ret;

	*(__le32 *)cardp->ep_out_buf = FUNC1(CMD_TYPE_REQUEST);

	cmd->command = FUNC0(CMD_802_11_RESET);
	cmd->size = FUNC0(sizeof(cmd));
	cmd->result = FUNC0(0);
	cmd->seqnum = FUNC0(0x5a5a);
	FUNC6(cardp, cardp->ep_out_buf, 4 + sizeof(struct cmd_header));

	FUNC4(100);
	ret = FUNC5(cardp->udev);
	FUNC4(100);

#ifdef CONFIG_OLPC
	if (ret && machine_is_olpc())
		if_usb_reset_olpc_card(NULL);
#endif

	return ret;
}