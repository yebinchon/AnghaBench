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
struct device {int dummy; } ;
struct can_priv {int /*<<< orphan*/  rxtx_led_trig; int /*<<< orphan*/  rx_led_trig; int /*<<< orphan*/  tx_led_trig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct can_priv* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *gendev, void *res)
{
	struct can_priv *priv = FUNC1(FUNC2(gendev));

	FUNC0(priv->tx_led_trig);
	FUNC0(priv->rx_led_trig);
	FUNC0(priv->rxtx_led_trig);
}