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
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct ti_hecc_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_hecc_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev)
{
	struct ti_hecc_priv *priv = FUNC4(ndev);

	FUNC5(ndev);
	FUNC1(&priv->offload);
	FUNC6(ndev);
	FUNC3(ndev->irq, ndev);
	FUNC2(ndev);
	FUNC7(priv, 0);

	FUNC0(ndev, CAN_LED_EVENT_STOP);

	return 0;
}