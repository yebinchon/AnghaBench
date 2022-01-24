#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct kvaser_usb_net_priv {size_t channel; struct kvaser_usb* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * channel_to_he; } ;
struct TYPE_6__ {TYPE_2__ hydra; } ;
struct kvaser_usb {TYPE_3__ card_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd_no; } ;
struct kvaser_cmd {TYPE_1__ header; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct kvaser_cmd* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvaser_usb*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct kvaser_usb_net_priv*,struct kvaser_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct kvaser_usb_net_priv *priv,
				       u8 cmd_no)
{
	struct kvaser_cmd *cmd;
	struct kvaser_usb *dev = priv->dev;
	int err;

	cmd = FUNC0(1, sizeof(struct kvaser_cmd), GFP_ATOMIC);
	if (!cmd)
		return -ENOMEM;

	cmd->header.cmd_no = cmd_no;

	FUNC4
		(cmd, dev->card_data.hydra.channel_to_he[priv->channel]);
	FUNC5
				(cmd, FUNC3(dev));

	err = FUNC6(priv, cmd,
					FUNC2(cmd));
	if (err)
		FUNC1(cmd);

	return err;
}