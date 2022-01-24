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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct kvaser_usb_net_priv {int /*<<< orphan*/  stop_comp; int /*<<< orphan*/  channel; int /*<<< orphan*/  dev; TYPE_1__ can; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  CMD_STOP_CHIP_REQ ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  KVASER_USB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kvaser_usb_net_priv *priv)
{
	int err;

	FUNC0(&priv->stop_comp);

	/* Make sure we do not report invalid BUS_OFF from CMD_CHIP_STATE_EVENT
	 * see comment in kvaser_usb_hydra_update_state()
	 */
	priv->can.state = CAN_STATE_STOPPED;

	err = FUNC1(priv->dev, CMD_STOP_CHIP_REQ,
					       priv->channel);
	if (err)
		return err;

	if (!FUNC3(&priv->stop_comp,
					 FUNC2(KVASER_USB_TIMEOUT)))
		return -ETIMEDOUT;

	return 0;
}