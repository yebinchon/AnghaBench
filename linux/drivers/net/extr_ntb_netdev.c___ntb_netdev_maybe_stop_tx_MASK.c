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
struct ntb_transport_qp {int dummy; } ;
struct ntb_netdev {int /*<<< orphan*/  tx_timer; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct ntb_netdev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct ntb_transport_qp*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  tx_time ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev,
				      struct ntb_transport_qp *qp, int size)
{
	struct ntb_netdev *dev = FUNC2(netdev);

	FUNC4(netdev);
	/* Make sure to see the latest value of ntb_transport_tx_free_entry()
	 * since the queue was last started.
	 */
	FUNC6();

	if (FUNC0(FUNC5(qp) < size)) {
		FUNC1(&dev->tx_timer, jiffies + FUNC7(tx_time));
		return -EBUSY;
	}

	FUNC3(netdev);
	return 0;
}