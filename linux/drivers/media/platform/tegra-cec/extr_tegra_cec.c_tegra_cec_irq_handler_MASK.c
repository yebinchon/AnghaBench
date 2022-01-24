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
struct tegra_cec {int tx_done; scalar_t__ tx_buf_cur; scalar_t__ tx_buf_cnt; int* tx_buf; int rx_done; scalar_t__ rx_buf_cnt; int* rx_buf; int /*<<< orphan*/  tx_status; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ CEC_MAX_MSG_SIZE ; 
 int /*<<< orphan*/  CEC_TX_STATUS_ARB_LOST ; 
 int /*<<< orphan*/  CEC_TX_STATUS_ERROR ; 
 int /*<<< orphan*/  CEC_TX_STATUS_LOW_DRIVE ; 
 int /*<<< orphan*/  CEC_TX_STATUS_NACK ; 
 int /*<<< orphan*/  CEC_TX_STATUS_OK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  TEGRA_CEC_INT_MASK ; 
 int TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY ; 
 int /*<<< orphan*/  TEGRA_CEC_INT_STAT ; 
 int TEGRA_CEC_INT_STAT_RX_REGISTER_FULL ; 
 int TEGRA_CEC_INT_STAT_RX_START_BIT_DETECTED ; 
 int TEGRA_CEC_INT_STAT_TX_ARBITRATION_FAILED ; 
 int TEGRA_CEC_INT_STAT_TX_BUS_ANOMALY_DETECTED ; 
 int TEGRA_CEC_INT_STAT_TX_FRAME_OR_BLOCK_NAKD ; 
 int TEGRA_CEC_INT_STAT_TX_FRAME_TRANSMITTED ; 
 int TEGRA_CEC_INT_STAT_TX_REGISTER_EMPTY ; 
 int TEGRA_CEC_INT_STAT_TX_REGISTER_UNDERRUN ; 
 int /*<<< orphan*/  TEGRA_CEC_RX_REGISTER ; 
 int TEGRA_CEC_RX_REGISTER_EOM ; 
 int /*<<< orphan*/  TEGRA_CEC_TX_REGISTER ; 
 int FUNC0 (struct tegra_cec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_cec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct tegra_cec* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_cec*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct device *dev = data;
	struct tegra_cec *cec = FUNC3(dev);
	u32 status, mask;

	status = FUNC0(cec, TEGRA_CEC_INT_STAT);
	mask = FUNC0(cec, TEGRA_CEC_INT_MASK);

	status &= mask;

	if (!status)
		return IRQ_HANDLED;

	if (status & TEGRA_CEC_INT_STAT_TX_REGISTER_UNDERRUN) {
		FUNC2(dev, "TX underrun, interrupt timing issue!\n");

		FUNC5(cec);
		FUNC1(cec, TEGRA_CEC_INT_MASK,
			  mask & ~TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY);

		cec->tx_done = true;
		cec->tx_status = CEC_TX_STATUS_ERROR;
		return IRQ_WAKE_THREAD;
	}

	if ((status & TEGRA_CEC_INT_STAT_TX_ARBITRATION_FAILED) ||
		   (status & TEGRA_CEC_INT_STAT_TX_BUS_ANOMALY_DETECTED)) {
		FUNC5(cec);
		FUNC1(cec, TEGRA_CEC_INT_MASK,
			  mask & ~TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY);

		cec->tx_done = true;
		if (status & TEGRA_CEC_INT_STAT_TX_BUS_ANOMALY_DETECTED)
			cec->tx_status = CEC_TX_STATUS_LOW_DRIVE;
		else
			cec->tx_status = CEC_TX_STATUS_ARB_LOST;
		return IRQ_WAKE_THREAD;
	}

	if (status & TEGRA_CEC_INT_STAT_TX_FRAME_TRANSMITTED) {
		FUNC1(cec, TEGRA_CEC_INT_STAT,
			  TEGRA_CEC_INT_STAT_TX_FRAME_TRANSMITTED);

		if (status & TEGRA_CEC_INT_STAT_TX_FRAME_OR_BLOCK_NAKD) {
			FUNC5(cec);

			cec->tx_done = true;
			cec->tx_status = CEC_TX_STATUS_NACK;
		} else {
			cec->tx_done = true;
			cec->tx_status = CEC_TX_STATUS_OK;
		}
		return IRQ_WAKE_THREAD;
	}

	if (status & TEGRA_CEC_INT_STAT_TX_FRAME_OR_BLOCK_NAKD)
		FUNC4(dev, "TX NAKed on the fly!\n");

	if (status & TEGRA_CEC_INT_STAT_TX_REGISTER_EMPTY) {
		if (cec->tx_buf_cur == cec->tx_buf_cnt) {
			FUNC1(cec, TEGRA_CEC_INT_MASK,
				  mask & ~TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY);
		} else {
			FUNC1(cec, TEGRA_CEC_TX_REGISTER,
				  cec->tx_buf[cec->tx_buf_cur++]);
			FUNC1(cec, TEGRA_CEC_INT_STAT,
				  TEGRA_CEC_INT_STAT_TX_REGISTER_EMPTY);
		}
	}

	if (status & TEGRA_CEC_INT_STAT_RX_START_BIT_DETECTED) {
		FUNC1(cec, TEGRA_CEC_INT_STAT,
			  TEGRA_CEC_INT_STAT_RX_START_BIT_DETECTED);
		cec->rx_done = false;
		cec->rx_buf_cnt = 0;
	}
	if (status & TEGRA_CEC_INT_STAT_RX_REGISTER_FULL) {
		u32 v;

		FUNC1(cec, TEGRA_CEC_INT_STAT,
			  TEGRA_CEC_INT_STAT_RX_REGISTER_FULL);
		v = FUNC0(cec, TEGRA_CEC_RX_REGISTER);
		if (cec->rx_buf_cnt < CEC_MAX_MSG_SIZE)
			cec->rx_buf[cec->rx_buf_cnt++] = v & 0xff;
		if (v & TEGRA_CEC_RX_REGISTER_EOM) {
			cec->rx_done = true;
			return IRQ_WAKE_THREAD;
		}
	}

	return IRQ_HANDLED;
}