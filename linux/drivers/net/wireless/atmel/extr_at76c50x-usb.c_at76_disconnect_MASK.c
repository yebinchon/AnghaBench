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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct at76_priv {int /*<<< orphan*/  udev; TYPE_1__* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at76_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct at76_priv* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *interface)
{
	struct at76_priv *priv;

	priv = FUNC2(interface);
	FUNC4(interface, NULL);

	/* Disconnect after loading internal firmware */
	if (!priv)
		return;

	FUNC5(priv->hw->wiphy, "disconnecting\n");
	FUNC0(priv);
	FUNC3(priv->udev);
	FUNC1(&interface->dev, "disconnected\n");
}