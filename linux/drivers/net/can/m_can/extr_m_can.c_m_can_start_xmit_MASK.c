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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct m_can_classdev {struct sk_buff* tx_skb; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  tx_wq; int /*<<< orphan*/  net; TYPE_1__ can; scalar_t__ is_peripheral; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ CAN_STATE_BUS_OFF ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct m_can_classdev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb,
				    struct net_device *dev)
{
	struct m_can_classdev *cdev = FUNC4(dev);

	if (FUNC0(dev, skb))
		return NETDEV_TX_OK;

	if (cdev->is_peripheral) {
		if (cdev->tx_skb) {
			FUNC3(dev, "hard_xmit called while tx busy\n");
			return NETDEV_TX_BUSY;
		}

		if (cdev->can.state == CAN_STATE_BUS_OFF) {
			FUNC1(dev);
		} else {
			/* Need to stop the queue to avoid numerous requests
			 * from being sent.  Suggested improvement is to create
			 * a queueing mechanism that will queue the skbs and
			 * process them in order.
			 */
			cdev->tx_skb = skb;
			FUNC5(cdev->net);
			FUNC6(cdev->tx_wq, &cdev->tx_work);
		}
	} else {
		cdev->tx_skb = skb;
		return FUNC2(cdev);
	}

	return NETDEV_TX_OK;
}