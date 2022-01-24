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
struct notifier_block {int dummy; } ;
struct net_device {char* name; } ;
struct can_priv {int /*<<< orphan*/  rxtx_led_trig; int /*<<< orphan*/  rx_led_trig; int /*<<< orphan*/  tx_led_trig; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int CAN_LED_NAME_SZ ; 
 unsigned long NETDEV_CHANGENAME ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (void*) ; 
 struct can_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *nb, unsigned long msg,
			    void *ptr)
{
	struct net_device *netdev = FUNC1(ptr);
	struct can_priv *priv = FUNC2(netdev);
	char name[CAN_LED_NAME_SZ];

	if (!priv)
		return NOTIFY_DONE;

	if (!priv->tx_led_trig || !priv->rx_led_trig || !priv->rxtx_led_trig)
		return NOTIFY_DONE;

	if (msg == NETDEV_CHANGENAME) {
		FUNC3(name, sizeof(name), "%s-tx", netdev->name);
		FUNC0(name, priv->tx_led_trig);

		FUNC3(name, sizeof(name), "%s-rx", netdev->name);
		FUNC0(name, priv->rx_led_trig);

		FUNC3(name, sizeof(name), "%s-rxtx", netdev->name);
		FUNC0(name, priv->rxtx_led_trig);
	}

	return NOTIFY_DONE;
}