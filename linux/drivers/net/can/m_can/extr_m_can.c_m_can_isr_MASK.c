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
typedef  int u32 ;
struct net_device_stats {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
struct m_can_classdev {int irqstatus; int version; int /*<<< orphan*/  napi; int /*<<< orphan*/  is_peripheral; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* clear_interrupts ) (struct m_can_classdev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_TX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IR_ALL_INT ; 
 int IR_ERR_ALL_30X ; 
 int IR_RF0N ; 
 int IR_TC ; 
 int IR_TEFN ; 
 int /*<<< orphan*/  M_CAN_IR ; 
 scalar_t__ FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct m_can_classdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct m_can_classdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct m_can_classdev* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct m_can_classdev*) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct m_can_classdev *cdev = FUNC9(dev);
	struct net_device_stats *stats = &dev->stats;
	u32 ir;

	ir = FUNC4(cdev, M_CAN_IR);
	if (!ir)
		return IRQ_NONE;

	/* ACK all irqs */
	if (ir & IR_ALL_INT)
		FUNC7(cdev, M_CAN_IR, ir);

	if (cdev->ops->clear_interrupts)
		cdev->ops->clear_interrupts(cdev);

	/* schedule NAPI in case of
	 * - rx IRQ
	 * - state change IRQ
	 * - bus error IRQ and bus error reporting
	 */
	if ((ir & IR_RF0N) || (ir & IR_ERR_ALL_30X)) {
		cdev->irqstatus = ir;
		FUNC2(cdev);
		if (!cdev->is_peripheral)
			FUNC8(&cdev->napi);
		else
			FUNC5(dev);
	}

	if (cdev->version == 30) {
		if (ir & IR_TC) {
			/* Transmission Complete Interrupt*/
			stats->tx_bytes += FUNC0(dev, 0);
			stats->tx_packets++;
			FUNC1(dev, CAN_LED_EVENT_TX);
			FUNC11(dev);
		}
	} else  {
		if (ir & IR_TEFN) {
			/* New TX FIFO Element arrived */
			FUNC3(dev);
			FUNC1(dev, CAN_LED_EVENT_TX);
			if (FUNC10(dev) &&
			    !FUNC6(cdev))
				FUNC11(dev);
		}
	}

	return IRQ_HANDLED;
}