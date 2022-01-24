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
struct smsc911x_data {int software_irq_signal; int /*<<< orphan*/  napi; scalar_t__ multicast_update_pending; } ;
struct net_device {int dummy; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIFO_INT ; 
 int FIFO_INT_TX_AVAIL_LEVEL_ ; 
 int /*<<< orphan*/  INT_EN ; 
 int INT_EN_RSFL_EN_ ; 
 int INT_EN_SW_INT_EN_ ; 
 int /*<<< orphan*/  INT_STS ; 
 int INT_STS_RSFL_ ; 
 int INT_STS_RXE_ ; 
 int INT_STS_RXSTOP_INT_ ; 
 int INT_STS_SW_INT_ ; 
 int INT_STS_TDFA_ ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intr ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct smsc911x_data* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct smsc911x_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct smsc911x_data*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct smsc911x_data *pdata = FUNC5(dev);
	u32 intsts = FUNC8(pdata, INT_STS);
	u32 inten = FUNC8(pdata, INT_EN);
	int serviced = IRQ_NONE;
	u32 temp;

	if (FUNC11(intsts & inten & INT_STS_SW_INT_)) {
		temp = FUNC8(pdata, INT_EN);
		temp &= (~INT_EN_SW_INT_EN_);
		FUNC9(pdata, INT_EN, temp);
		FUNC9(pdata, INT_STS, INT_STS_SW_INT_);
		pdata->software_irq_signal = 1;
		FUNC7();
		serviced = IRQ_HANDLED;
	}

	if (FUNC11(intsts & inten & INT_STS_RXSTOP_INT_)) {
		/* Called when there is a multicast update scheduled and
		 * it is now safe to complete the update */
		FUNC0(pdata, intr, "RX Stop interrupt");
		FUNC9(pdata, INT_STS, INT_STS_RXSTOP_INT_);
		if (pdata->multicast_update_pending)
			FUNC10(pdata);
		serviced = IRQ_HANDLED;
	}

	if (intsts & inten & INT_STS_TDFA_) {
		temp = FUNC8(pdata, FIFO_INT);
		temp |= FIFO_INT_TX_AVAIL_LEVEL_;
		FUNC9(pdata, FIFO_INT, temp);
		FUNC9(pdata, INT_STS, INT_STS_TDFA_);
		FUNC6(dev);
		serviced = IRQ_HANDLED;
	}

	if (FUNC11(intsts & inten & INT_STS_RXE_)) {
		FUNC0(pdata, intr, "RX Error interrupt");
		FUNC9(pdata, INT_STS, INT_STS_RXE_);
		serviced = IRQ_HANDLED;
	}

	if (FUNC3(intsts & inten & INT_STS_RSFL_)) {
		if (FUNC3(FUNC4(&pdata->napi))) {
			/* Disable Rx interrupts */
			temp = FUNC8(pdata, INT_EN);
			temp &= (~INT_EN_RSFL_EN_);
			FUNC9(pdata, INT_EN, temp);
			/* Schedule a NAPI poll */
			FUNC2(&pdata->napi);
		} else {
			FUNC1(pdata, rx_err, "napi_schedule_prep failed");
		}
		serviced = IRQ_HANDLED;
	}

	return serviced;
}