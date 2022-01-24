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
struct sun4ican_priv {int /*<<< orphan*/  clk; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,...) ; 
 struct sun4ican_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  sun4i_can_interrupt ; 
 int FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct sun4ican_priv *priv = FUNC6(dev);
	int err;

	/* common open */
	err = FUNC8(dev);
	if (err)
		return err;

	/* register interrupt handler */
	err = FUNC9(dev->irq, sun4i_can_interrupt, 0, dev->name, dev);
	if (err) {
		FUNC5(dev, "request_irq err: %d\n", err);
		goto exit_irq;
	}

	/* turn on clocking for CAN peripheral block */
	err = FUNC2(priv->clk);
	if (err) {
		FUNC5(dev, "could not enable CAN peripheral clock\n");
		goto exit_clock;
	}

	err = FUNC10(dev);
	if (err) {
		FUNC5(dev, "could not start CAN peripheral\n");
		goto exit_can_start;
	}

	FUNC0(dev, CAN_LED_EVENT_OPEN);
	FUNC7(dev);

	return 0;

exit_can_start:
	FUNC1(priv->clk);
exit_clock:
	FUNC4(dev->irq, dev);
exit_irq:
	FUNC3(dev);
	return err;
}