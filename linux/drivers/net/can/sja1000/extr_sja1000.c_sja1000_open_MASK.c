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
struct sja1000_priv {int flags; int /*<<< orphan*/  irq_flags; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int EAGAIN ; 
 int SJA1000_CUSTOM_IRQ_HANDLER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct sja1000_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  sja1000_interrupt ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct sja1000_priv *priv = FUNC2(dev);
	int err;

	/* set chip into reset mode */
	FUNC6(dev);

	/* common open */
	err = FUNC4(dev);
	if (err)
		return err;

	/* register interrupt handler, if not done by the device driver */
	if (!(priv->flags & SJA1000_CUSTOM_IRQ_HANDLER)) {
		err = FUNC5(dev->irq, sja1000_interrupt, priv->irq_flags,
				  dev->name, (void *)dev);
		if (err) {
			FUNC1(dev);
			return -EAGAIN;
		}
	}

	/* init and start chi */
	FUNC7(dev);

	FUNC0(dev, CAN_LED_EVENT_OPEN);

	FUNC3(dev);

	return 0;
}