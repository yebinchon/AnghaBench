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
struct ti_hecc_priv {int /*<<< orphan*/  offload; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 struct ti_hecc_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  ti_hecc_interrupt ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ti_hecc_priv*,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev)
{
	struct ti_hecc_priv *priv = FUNC4(ndev);
	int err;

	err = FUNC7(ndev->irq, ti_hecc_interrupt, IRQF_SHARED,
			  ndev->name, ndev);
	if (err) {
		FUNC3(ndev, "error requesting interrupt\n");
		return err;
	}

	FUNC9(priv, 1);

	/* Open common can device */
	err = FUNC6(ndev);
	if (err) {
		FUNC3(ndev, "open_candev() failed %d\n", err);
		FUNC9(priv, 0);
		FUNC2(ndev->irq, ndev);
		return err;
	}

	FUNC0(ndev, CAN_LED_EVENT_OPEN);

	FUNC8(ndev);
	FUNC1(&priv->offload);
	FUNC5(ndev);

	return 0;
}