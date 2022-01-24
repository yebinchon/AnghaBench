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
struct net_device {int /*<<< orphan*/  irq; } ;
struct m_can_classdev {int /*<<< orphan*/ * tx_wq; int /*<<< orphan*/ * tx_skb; scalar_t__ is_peripheral; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct m_can_classdev* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct m_can_classdev *cdev = FUNC7(dev);

	FUNC8(dev);

	if (!cdev->is_peripheral)
		FUNC6(&cdev->napi);

	FUNC5(dev);
	FUNC4(cdev);
	FUNC3(dev->irq, dev);

	if (cdev->is_peripheral) {
		cdev->tx_skb = NULL;
		FUNC2(cdev->tx_wq);
		cdev->tx_wq = NULL;
	}

	FUNC1(dev);
	FUNC0(dev, CAN_LED_EVENT_STOP);

	return 0;
}