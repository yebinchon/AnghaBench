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
struct m_can_classdev {int /*<<< orphan*/  tx_wq; scalar_t__ is_peripheral; int /*<<< orphan*/  napi; int /*<<< orphan*/  tx_work; int /*<<< orphan*/ * tx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int IRQF_TRIGGER_FALLING ; 
 int WQ_FREEZABLE ; 
 int WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  m_can_isr ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  m_can_tx_work_queue ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 struct m_can_classdev* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (struct net_device*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev)
{
	struct m_can_classdev *cdev = FUNC10(dev);
	int err;

	err = FUNC5(cdev);
	if (err)
		return err;

	/* open the can device */
	err = FUNC12(dev);
	if (err) {
		FUNC9(dev, "failed to open can device\n");
		goto exit_disable_clks;
	}

	/* register interrupt handler */
	if (cdev->is_peripheral) {
		cdev->tx_skb = NULL;
		cdev->tx_wq = FUNC1("mcan_wq",
					      WQ_FREEZABLE | WQ_MEM_RECLAIM, 0);
		if (!cdev->tx_wq) {
			err = -ENOMEM;
			goto out_wq_fail;
		}

		FUNC0(&cdev->tx_work, m_can_tx_work_queue);

		err = FUNC14(dev->irq, NULL, m_can_isr,
					   IRQF_ONESHOT | IRQF_TRIGGER_FALLING,
					   dev->name, dev);
	} else {
		err = FUNC13(dev->irq, m_can_isr, IRQF_SHARED, dev->name,
				  dev);
	}

	if (err < 0) {
		FUNC9(dev, "failed to request interrupt\n");
		goto exit_irq_fail;
	}

	/* start the m_can controller */
	FUNC7(dev);

	FUNC2(dev, CAN_LED_EVENT_OPEN);

	if (!cdev->is_peripheral)
		FUNC8(&cdev->napi);

	FUNC11(dev);

	return 0;

exit_irq_fail:
	if (cdev->is_peripheral)
		FUNC4(cdev->tx_wq);
out_wq_fail:
	FUNC3(dev);
exit_disable_clks:
	FUNC6(cdev);
	return err;
}