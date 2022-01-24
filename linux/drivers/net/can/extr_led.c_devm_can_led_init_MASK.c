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
struct net_device {char* name; int /*<<< orphan*/  dev; } ;
struct can_priv {int /*<<< orphan*/  rxtx_led_trig; int /*<<< orphan*/  rxtx_led_trig_name; int /*<<< orphan*/  rx_led_trig; int /*<<< orphan*/  rx_led_trig_name; int /*<<< orphan*/  tx_led_trig; int /*<<< orphan*/  tx_led_trig_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  can_led_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct can_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*) ; 

void FUNC6(struct net_device *netdev)
{
	struct can_priv *priv = FUNC4(netdev);
	void *res;

	res = FUNC1(can_led_release, 0, GFP_KERNEL);
	if (!res) {
		FUNC3(netdev, "cannot register LED triggers\n");
		return;
	}

	FUNC5(priv->tx_led_trig_name, sizeof(priv->tx_led_trig_name),
		 "%s-tx", netdev->name);
	FUNC5(priv->rx_led_trig_name, sizeof(priv->rx_led_trig_name),
		 "%s-rx", netdev->name);
	FUNC5(priv->rxtx_led_trig_name, sizeof(priv->rxtx_led_trig_name),
		 "%s-rxtx", netdev->name);

	FUNC2(priv->tx_led_trig_name,
				    &priv->tx_led_trig);
	FUNC2(priv->rx_led_trig_name,
				    &priv->rx_led_trig);
	FUNC2(priv->rxtx_led_trig_name,
				    &priv->rxtx_led_trig);

	FUNC0(&netdev->dev, res);
}