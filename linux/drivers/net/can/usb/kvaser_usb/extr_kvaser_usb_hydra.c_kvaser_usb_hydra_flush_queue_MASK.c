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
struct kvaser_usb_net_priv {int /*<<< orphan*/  flush_comp; int /*<<< orphan*/  channel; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FLUSH_QUEUE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  KVASER_USB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kvaser_usb_net_priv *priv)
{
	int err;

	FUNC0(&priv->flush_comp);

	err = FUNC1(priv->dev, CMD_FLUSH_QUEUE,
					       priv->channel);
	if (err)
		return err;

	if (!FUNC3(&priv->flush_comp,
					 FUNC2(KVASER_USB_TIMEOUT)))
		return -ETIMEDOUT;

	return 0;
}