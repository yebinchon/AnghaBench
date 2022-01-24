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
struct net_device {int /*<<< orphan*/  irq; } ;
struct c_can_priv {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct c_can_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct c_can_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct c_can_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct c_can_priv *priv = FUNC7(dev);

	FUNC8(dev);
	FUNC6(&priv->napi);
	FUNC2(dev);
	FUNC5(dev->irq, dev);
	FUNC4(dev);

	FUNC1(priv, false);
	FUNC0(priv);

	FUNC3(dev, CAN_LED_EVENT_STOP);

	return 0;
}