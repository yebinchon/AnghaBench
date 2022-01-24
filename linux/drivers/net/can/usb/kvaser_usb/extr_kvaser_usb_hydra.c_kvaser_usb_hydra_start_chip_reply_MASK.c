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
struct kvaser_usb_net_priv {int /*<<< orphan*/  start_comp; int /*<<< orphan*/  netdev; } ;
struct kvaser_usb {int dummy; } ;
struct kvaser_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct kvaser_usb_net_priv* FUNC2 (struct kvaser_usb const*,struct kvaser_cmd const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct kvaser_usb *dev,
					      const struct kvaser_cmd *cmd)
{
	struct kvaser_usb_net_priv *priv;

	priv = FUNC2(dev, cmd);
	if (!priv)
		return;

	if (FUNC1(&priv->start_comp) &&
	    FUNC3(priv->netdev)) {
		FUNC5(priv->netdev);
	} else {
		FUNC4(priv->netdev);
		FUNC0(&priv->start_comp);
	}
}