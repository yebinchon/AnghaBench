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
struct net_device {int dummy; } ;
struct can_bittiming {int /*<<< orphan*/  phase_seg2; scalar_t__ phase_seg1; scalar_t__ prop_seg; int /*<<< orphan*/  sjw; int /*<<< orphan*/  bitrate; } ;
struct TYPE_4__ {int ctrlmode; struct can_bittiming bittiming; } ;
struct kvaser_usb_net_priv {TYPE_1__ can; int /*<<< orphan*/  channel; struct kvaser_usb* dev; } ;
struct kvaser_usb {int dummy; } ;
struct kvaser_cmd_busparams {int dummy; } ;
struct TYPE_5__ {int tid; int no_samp; int /*<<< orphan*/  tseg2; scalar_t__ tseg1; int /*<<< orphan*/  sjw; int /*<<< orphan*/  bitrate; int /*<<< orphan*/  channel; } ;
struct TYPE_6__ {TYPE_2__ busparams; } ;
struct kvaser_cmd {scalar_t__ len; TYPE_3__ u; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int CAN_CTRLMODE_3_SAMPLES ; 
 scalar_t__ CMD_HEADER_LEN ; 
 int /*<<< orphan*/  CMD_SET_BUS_PARAMS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvaser_cmd*) ; 
 struct kvaser_cmd* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kvaser_usb*,struct kvaser_cmd*,scalar_t__) ; 
 struct kvaser_usb_net_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct kvaser_usb_net_priv *priv = FUNC4(netdev);
	struct can_bittiming *bt = &priv->can.bittiming;
	struct kvaser_usb *dev = priv->dev;
	struct kvaser_cmd *cmd;
	int rc;

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->id = CMD_SET_BUS_PARAMS;
	cmd->len = CMD_HEADER_LEN + sizeof(struct kvaser_cmd_busparams);
	cmd->u.busparams.channel = priv->channel;
	cmd->u.busparams.tid = 0xff;
	cmd->u.busparams.bitrate = FUNC0(bt->bitrate);
	cmd->u.busparams.sjw = bt->sjw;
	cmd->u.busparams.tseg1 = bt->prop_seg + bt->phase_seg1;
	cmd->u.busparams.tseg2 = bt->phase_seg2;

	if (priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES)
		cmd->u.busparams.no_samp = 3;
	else
		cmd->u.busparams.no_samp = 1;

	rc = FUNC3(dev, cmd, cmd->len);

	FUNC1(cmd);
	return rc;
}