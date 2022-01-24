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
struct ifi_canfd_priv {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  ifi_canfd_isr ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct ifi_canfd_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev)
{
	struct ifi_canfd_priv *priv = FUNC5(ndev);
	int ret;

	ret = FUNC7(ndev);
	if (ret) {
		FUNC4(ndev, "Failed to open CAN device\n");
		return ret;
	}

	/* Register interrupt handler */
	ret = FUNC8(ndev->irq, ifi_canfd_isr, IRQF_SHARED,
			  ndev->name, ndev);
	if (ret < 0) {
		FUNC4(ndev, "Failed to request interrupt\n");
		goto err_irq;
	}

	FUNC2(ndev);

	FUNC0(ndev, CAN_LED_EVENT_OPEN);
	FUNC3(&priv->napi);
	FUNC6(ndev);

	return 0;
err_irq:
	FUNC1(ndev);
	return ret;
}