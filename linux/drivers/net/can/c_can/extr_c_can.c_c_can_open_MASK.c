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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct c_can_priv {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct c_can_priv*,int) ; 
 int /*<<< orphan*/  c_can_isr ; 
 int /*<<< orphan*/  FUNC1 (struct c_can_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct c_can_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct c_can_priv*,int) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 struct c_can_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (struct net_device*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	int err;
	struct c_can_priv *priv = FUNC10(dev);

	FUNC1(priv);
	FUNC3(priv, true);

	/* open the can device */
	err = FUNC12(dev);
	if (err) {
		FUNC9(dev, "failed to open can device\n");
		goto exit_open_fail;
	}

	/* register interrupt handler */
	err = FUNC13(dev->irq, &c_can_isr, IRQF_SHARED, dev->name,
				dev);
	if (err < 0) {
		FUNC9(dev, "failed to request interrupt\n");
		goto exit_irq_fail;
	}

	/* start the c_can controller */
	err = FUNC4(dev);
	if (err)
		goto exit_start_fail;

	FUNC5(dev, CAN_LED_EVENT_OPEN);

	FUNC8(&priv->napi);
	/* enable status change, error and module interrupts */
	FUNC0(priv, true);
	FUNC11(dev);

	return 0;

exit_start_fail:
	FUNC7(dev->irq, dev);
exit_irq_fail:
	FUNC6(dev);
exit_open_fail:
	FUNC3(priv, false);
	FUNC2(priv);
	return err;
}