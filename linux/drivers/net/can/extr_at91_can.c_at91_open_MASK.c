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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct at91_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int EAGAIN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  at91_irq ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct at91_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct at91_priv *priv = FUNC6(dev);
	int err;

	err = FUNC3(priv->clk);
	if (err)
		return err;

	/* check or determine and set bittime */
	err = FUNC8(dev);
	if (err)
		goto out;

	/* register interrupt handler */
	if (FUNC9(dev->irq, at91_irq, IRQF_SHARED,
			dev->name, dev)) {
		err = -EAGAIN;
		goto out_close;
	}

	FUNC1(dev, CAN_LED_EVENT_OPEN);

	/* start chip and queuing */
	FUNC0(dev);
	FUNC5(&priv->napi);
	FUNC7(dev);

	return 0;

 out_close:
	FUNC4(dev);
 out:
	FUNC2(priv->clk);

	return err;
}