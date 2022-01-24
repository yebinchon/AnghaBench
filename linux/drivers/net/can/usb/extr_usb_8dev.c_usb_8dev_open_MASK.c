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
struct usb_8dev_priv {int /*<<< orphan*/  netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct usb_8dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int FUNC7 (struct usb_8dev_priv*) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct usb_8dev_priv *priv = FUNC2(netdev);
	int err;

	/* common open */
	err = FUNC6(netdev);
	if (err)
		return err;

	FUNC0(netdev, CAN_LED_EVENT_OPEN);

	/* finally start device */
	err = FUNC7(priv);
	if (err) {
		if (err == -ENODEV)
			FUNC4(priv->netdev);

		FUNC3(netdev, "couldn't start device: %d\n",
			 err);

		FUNC1(netdev);

		return err;
	}

	FUNC5(netdev);

	return 0;
}