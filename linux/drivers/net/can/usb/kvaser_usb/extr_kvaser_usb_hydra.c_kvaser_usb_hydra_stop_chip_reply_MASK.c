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
struct kvaser_usb_net_priv {int /*<<< orphan*/  stop_comp; } ;
struct kvaser_usb {int dummy; } ;
struct kvaser_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct kvaser_usb_net_priv* FUNC1 (struct kvaser_usb const*,struct kvaser_cmd const*) ; 

__attribute__((used)) static void FUNC2(const struct kvaser_usb *dev,
					     const struct kvaser_cmd *cmd)
{
	struct kvaser_usb_net_priv *priv;

	priv = FUNC1(dev, cmd);
	if (!priv)
		return;

	FUNC0(&priv->stop_comp);
}