#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pch_can_priv {TYPE_1__* dev; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 struct pch_can_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_can_priv*) ; 
 int /*<<< orphan*/  pch_can_interrupt ; 
 int /*<<< orphan*/  FUNC7 (struct pch_can_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev)
{
	struct pch_can_priv *priv = FUNC3(ndev);
	int retval;

	/* Regstering the interrupt. */
	retval = FUNC9(priv->dev->irq, pch_can_interrupt, IRQF_SHARED,
			     ndev->name, ndev);
	if (retval) {
		FUNC2(ndev, "request_irq failed.\n");
		goto req_irq_err;
	}

	/* Open common can device */
	retval = FUNC5(ndev);
	if (retval) {
		FUNC2(ndev, "open_candev() failed %d\n", retval);
		goto err_open_candev;
	}

	FUNC6(priv);
	FUNC8(ndev);
	FUNC1(&priv->napi);
	FUNC4(ndev);

	return 0;

err_open_candev:
	FUNC0(priv->dev->irq, ndev);
req_irq_err:
	FUNC7(priv);

	return retval;
}