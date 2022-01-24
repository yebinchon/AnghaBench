#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct kvaser_usb {int dummy; } ;
struct kvaser_cmd_simple {int dummy; } ;
struct TYPE_3__ {int channel; int tid; } ;
struct TYPE_4__ {TYPE_1__ simple; } ;
struct kvaser_cmd {scalar_t__ len; TYPE_2__ u; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ CMD_HEADER_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct kvaser_cmd*) ; 
 struct kvaser_cmd* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvaser_usb const*,struct kvaser_cmd*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(const struct kvaser_usb *dev,
					   u8 cmd_id, int channel)
{
	struct kvaser_cmd *cmd;
	int rc;

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->id = cmd_id;
	cmd->len = CMD_HEADER_LEN + sizeof(struct kvaser_cmd_simple);
	cmd->u.simple.channel = channel;
	cmd->u.simple.tid = 0xff;

	rc = FUNC2(dev, cmd, cmd->len);

	FUNC0(cmd);
	return rc;
}