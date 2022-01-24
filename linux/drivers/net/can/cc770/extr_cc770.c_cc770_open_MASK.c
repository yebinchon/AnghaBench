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
struct cc770_priv {int /*<<< orphan*/  irq_flags; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  cc770_interrupt ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct cc770_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct cc770_priv *priv = FUNC2(dev);
	int err;

	/* set chip into reset mode */
	FUNC6(dev);

	/* common open */
	err = FUNC4(dev);
	if (err)
		return err;

	err = FUNC5(dev->irq, &cc770_interrupt, priv->irq_flags,
			  dev->name, dev);
	if (err) {
		FUNC1(dev);
		return -EAGAIN;
	}

	/* init and start chip */
	FUNC0(dev);

	FUNC3(dev);

	return 0;
}