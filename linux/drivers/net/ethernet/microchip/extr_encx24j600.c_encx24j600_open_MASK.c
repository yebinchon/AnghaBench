#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* spi; } ;
struct encx24j600_priv {TYPE_2__ ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  FUNC0 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  encx24j600_isr ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 
 struct encx24j600_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct encx24j600_priv*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct encx24j600_priv *priv = FUNC4(dev);

	int ret = FUNC6(priv->ctx.spi->irq, NULL, encx24j600_isr,
				       IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				       DRV_NAME, priv);
	if (FUNC7(ret < 0)) {
		FUNC3(dev, "request irq %d failed (ret = %d)\n",
			   priv->ctx.spi->irq, ret);
		return ret;
	}

	FUNC0(priv);
	FUNC2(priv);
	FUNC1(priv);
	FUNC5(dev);

	return 0;
}