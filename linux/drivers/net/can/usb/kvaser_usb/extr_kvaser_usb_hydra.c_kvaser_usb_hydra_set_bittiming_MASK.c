#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct net_device {int dummy; } ;
struct can_bittiming {int prop_seg; int phase_seg1; int phase_seg2; int sjw; int /*<<< orphan*/  bitrate; } ;
struct TYPE_6__ {struct can_bittiming bittiming; } ;
struct kvaser_usb_net_priv {size_t channel; struct kvaser_usb* dev; TYPE_1__ can; } ;
struct TYPE_9__ {int /*<<< orphan*/ * channel_to_he; } ;
struct TYPE_10__ {TYPE_4__ hydra; } ;
struct kvaser_usb {TYPE_5__ card_data; } ;
struct TYPE_8__ {int nsamples; void* tseg2; void* tseg1; void* sjw; int /*<<< orphan*/  bitrate; } ;
struct TYPE_7__ {int /*<<< orphan*/  cmd_no; } ;
struct kvaser_cmd {TYPE_3__ set_busparams_req; TYPE_2__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_BUSPARAMS_REQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct kvaser_cmd* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvaser_usb*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct kvaser_usb*,struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 struct kvaser_usb_net_priv* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev)
{
	struct kvaser_cmd *cmd;
	struct kvaser_usb_net_priv *priv = FUNC8(netdev);
	struct can_bittiming *bt = &priv->can.bittiming;
	struct kvaser_usb *dev = priv->dev;
	int tseg1 = bt->prop_seg + bt->phase_seg1;
	int tseg2 = bt->phase_seg2;
	int sjw = bt->sjw;
	int err;

	cmd = FUNC1(1, sizeof(struct kvaser_cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->header.cmd_no = CMD_SET_BUSPARAMS_REQ;
	cmd->set_busparams_req.bitrate = FUNC0(bt->bitrate);
	cmd->set_busparams_req.sjw = (u8)sjw;
	cmd->set_busparams_req.tseg1 = (u8)tseg1;
	cmd->set_busparams_req.tseg2 = (u8)tseg2;
	cmd->set_busparams_req.nsamples = 1;

	FUNC5
		(cmd, dev->card_data.hydra.channel_to_he[priv->channel]);
	FUNC6
				(cmd, FUNC4(dev));

	err = FUNC7(dev, cmd, FUNC3(cmd));

	FUNC2(cmd);

	return err;
}