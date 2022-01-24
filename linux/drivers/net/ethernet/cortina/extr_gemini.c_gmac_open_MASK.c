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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  phydev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * function; } ;
struct gemini_ethernet_port {TYPE_1__ rx_coalesce_timer; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int EBUSY ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC1 (struct gemini_ethernet_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  gmac_coalesce_delay_expired ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  gmac_irq ; 
 int FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct gemini_ethernet_port*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*) ; 
 struct gemini_ethernet_port* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct gemini_ethernet_port*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC20(struct net_device *netdev)
{
	struct gemini_ethernet_port *port = FUNC13(netdev);
	int err;

	if (!netdev->phydev) {
		err = FUNC5(netdev);
		if (err) {
			FUNC15(port, ifup, netdev,
				  "PHY init failed: %d\n", err);
			return err;
		}
	}

	err = FUNC19(netdev->irq, gmac_irq,
			  IRQF_SHARED, netdev->name, netdev);
	if (err) {
		FUNC12(netdev, "no IRQ\n");
		return err;
	}

	FUNC14(netdev);
	FUNC17(netdev->phydev);

	err = FUNC1(port);
	/* It's fine if it's just busy, the other port has set up
	 * the freeq in that case.
	 */
	if (err && (err != -EBUSY)) {
		FUNC12(netdev, "could not resize freeq\n");
		goto err_stop_phy;
	}

	err = FUNC6(netdev);
	if (err) {
		FUNC12(netdev, "could not setup RXQ\n");
		goto err_stop_phy;
	}

	err = FUNC7(netdev);
	if (err) {
		FUNC12(netdev, "could not setup TXQs\n");
		FUNC2(netdev);
		goto err_stop_phy;
	}

	FUNC10(&port->napi);

	FUNC8(port);
	FUNC3(netdev, 1);
	FUNC4(netdev);
	FUNC16(netdev);

	FUNC9(&port->rx_coalesce_timer, CLOCK_MONOTONIC,
		     HRTIMER_MODE_REL);
	port->rx_coalesce_timer.function = &gmac_coalesce_delay_expired;

	FUNC11(netdev, "opened\n");

	return 0;

err_stop_phy:
	FUNC18(netdev->phydev);
	FUNC0(netdev->irq, netdev);
	return err;
}