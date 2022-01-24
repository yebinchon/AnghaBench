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
struct net_device {int dummy; } ;
struct catc {int /*<<< orphan*/  ctrl_urb; int /*<<< orphan*/  irq_urb; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  timer; int /*<<< orphan*/  is_f5u011; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct catc* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev)
{
	struct catc *catc = FUNC1(netdev);

	FUNC2(netdev);

	if (!catc->is_f5u011)
		FUNC0(&catc->timer);

	FUNC3(catc->rx_urb);
	FUNC3(catc->tx_urb);
	FUNC3(catc->irq_urb);
	FUNC3(catc->ctrl_urb);

	return 0;
}