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
struct rcar_can_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  can_clk; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int,...) ; 
 struct rcar_can_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  rcar_can_interrupt ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *ndev)
{
	struct rcar_can_priv *priv = FUNC7(ndev);
	int err;

	err = FUNC2(priv->clk);
	if (err) {
		FUNC6(ndev,
			   "failed to enable peripheral clock, error %d\n",
			   err);
		goto out;
	}
	err = FUNC2(priv->can_clk);
	if (err) {
		FUNC6(ndev, "failed to enable CAN clock, error %d\n",
			   err);
		goto out_clock;
	}
	err = FUNC9(ndev);
	if (err) {
		FUNC6(ndev, "open_candev() failed, error %d\n", err);
		goto out_can_clock;
	}
	FUNC5(&priv->napi);
	err = FUNC11(ndev->irq, rcar_can_interrupt, 0, ndev->name, ndev);
	if (err) {
		FUNC6(ndev, "request_irq(%d) failed, error %d\n",
			   ndev->irq, err);
		goto out_close;
	}
	FUNC0(ndev, CAN_LED_EVENT_OPEN);
	FUNC10(ndev);
	FUNC8(ndev);
	return 0;
out_close:
	FUNC4(&priv->napi);
	FUNC3(ndev);
out_can_clock:
	FUNC1(priv->can_clk);
out_clock:
	FUNC1(priv->clk);
out:
	return err;
}