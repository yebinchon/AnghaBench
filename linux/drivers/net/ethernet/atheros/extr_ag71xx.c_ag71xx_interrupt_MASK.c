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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ag71xx {int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AG71XX_INT_ERR ; 
 int AG71XX_INT_POLL ; 
 int AG71XX_INT_RX_BE ; 
 int AG71XX_INT_TX_BE ; 
 int /*<<< orphan*/  AG71XX_REG_INT_STATUS ; 
 int /*<<< orphan*/  AG71XX_REG_RX_STATUS ; 
 int /*<<< orphan*/  AG71XX_REG_TX_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  RX_STATUS_BE ; 
 int /*<<< orphan*/  TX_STATUS_BE ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*,int) ; 
 int FUNC1 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intr ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ag71xx* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ag71xx*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ag71xx*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct net_device *ndev = dev_id;
	struct ag71xx *ag;
	u32 status;

	ag = FUNC5(ndev);
	status = FUNC1(ag, AG71XX_REG_INT_STATUS);

	if (FUNC8(!status))
		return IRQ_NONE;

	if (FUNC8(status & AG71XX_INT_ERR)) {
		if (status & AG71XX_INT_TX_BE) {
			FUNC2(ag, AG71XX_REG_TX_STATUS, TX_STATUS_BE);
			FUNC7(ag, intr, ndev, "TX BUS error\n");
		}
		if (status & AG71XX_INT_RX_BE) {
			FUNC2(ag, AG71XX_REG_RX_STATUS, RX_STATUS_BE);
			FUNC7(ag, intr, ndev, "RX BUS error\n");
		}
	}

	if (FUNC3(status & AG71XX_INT_POLL)) {
		FUNC0(ag, AG71XX_INT_POLL);
		FUNC6(ag, intr, ndev, "enable polling mode\n");
		FUNC4(&ag->napi);
	}

	return IRQ_HANDLED;
}