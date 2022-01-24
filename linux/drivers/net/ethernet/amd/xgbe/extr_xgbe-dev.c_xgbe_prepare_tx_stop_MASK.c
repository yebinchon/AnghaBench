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
struct TYPE_2__ {int /*<<< orphan*/  version; } ;
struct xgbe_prv_data {int /*<<< orphan*/  netdev; TYPE_1__ hw_feat; } ;

/* Variables and functions */
 unsigned int DMA_DSR0 ; 
 unsigned int DMA_DSR0_TPS_START ; 
 unsigned int DMA_DSR1 ; 
 unsigned int DMA_DSRX_FIRST_QUEUE ; 
 unsigned int DMA_DSRX_INC ; 
 unsigned int DMA_DSRX_QPR ; 
 unsigned int DMA_DSRX_TPS_START ; 
 unsigned int DMA_DSR_Q_WIDTH ; 
 int /*<<< orphan*/  DMA_DSR_TPS_WIDTH ; 
 unsigned int DMA_TPS_STOPPED ; 
 unsigned int DMA_TPS_SUSPENDED ; 
 unsigned int FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  MAC_VR ; 
 int /*<<< orphan*/  SNPSVER ; 
 unsigned long XGBE_DMA_STOP_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct xgbe_prv_data*,unsigned int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 void FUNC6 (struct xgbe_prv_data*,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct xgbe_prv_data *pdata,
				 unsigned int queue)
{
	unsigned int tx_dsr, tx_pos, tx_qidx;
	unsigned int tx_status;
	unsigned long tx_timeout;

	if (FUNC1(pdata->hw_feat.version, MAC_VR, SNPSVER) > 0x20)
		return FUNC6(pdata, queue);

	/* Calculate the status register to read and the position within */
	if (queue < DMA_DSRX_FIRST_QUEUE) {
		tx_dsr = DMA_DSR0;
		tx_pos = (queue * DMA_DSR_Q_WIDTH) + DMA_DSR0_TPS_START;
	} else {
		tx_qidx = queue - DMA_DSRX_FIRST_QUEUE;

		tx_dsr = DMA_DSR1 + ((tx_qidx / DMA_DSRX_QPR) * DMA_DSRX_INC);
		tx_pos = ((tx_qidx % DMA_DSRX_QPR) * DMA_DSR_Q_WIDTH) +
			 DMA_DSRX_TPS_START;
	}

	/* The Tx engine cannot be stopped if it is actively processing
	 * descriptors. Wait for the Tx engine to enter the stopped or
	 * suspended state.  Don't wait forever though...
	 */
	tx_timeout = jiffies + (XGBE_DMA_STOP_TIMEOUT * HZ);
	while (FUNC4(jiffies, tx_timeout)) {
		tx_status = FUNC2(pdata, tx_dsr);
		tx_status = FUNC0(tx_status, tx_pos, DMA_DSR_TPS_WIDTH);
		if ((tx_status == DMA_TPS_STOPPED) ||
		    (tx_status == DMA_TPS_SUSPENDED))
			break;

		FUNC5(500, 1000);
	}

	if (!FUNC4(jiffies, tx_timeout))
		FUNC3(pdata->netdev,
			    "timed out waiting for Tx DMA channel %u to stop\n",
			    queue);
}