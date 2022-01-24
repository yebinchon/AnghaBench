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
struct xgbe_prv_data {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  MTL_Q_RQDR ; 
 int /*<<< orphan*/  PRXQ ; 
 int /*<<< orphan*/  RXQSTS ; 
 unsigned long XGBE_DMA_STOP_TIMEOUT ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct xgbe_prv_data*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct xgbe_prv_data *pdata,
				 unsigned int queue)
{
	unsigned int rx_status;
	unsigned long rx_timeout;

	/* The Rx engine cannot be stopped if it is actively processing
	 * packets. Wait for the Rx queue to empty the Rx fifo.  Don't
	 * wait forever though...
	 */
	rx_timeout = jiffies + (XGBE_DMA_STOP_TIMEOUT * HZ);
	while (FUNC3(jiffies, rx_timeout)) {
		rx_status = FUNC1(pdata, queue, MTL_Q_RQDR);
		if ((FUNC0(rx_status, MTL_Q_RQDR, PRXQ) == 0) &&
		    (FUNC0(rx_status, MTL_Q_RQDR, RXQSTS) == 0))
			break;

		FUNC4(500, 1000);
	}

	if (!FUNC3(jiffies, rx_timeout))
		FUNC2(pdata->netdev,
			    "timed out waiting for Rx queue %u to empty\n",
			    queue);
}