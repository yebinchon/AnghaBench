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
struct TYPE_2__ {int len; int /*<<< orphan*/  msg; int /*<<< orphan*/  rx_status; } ;
struct s5p_cec_dev {scalar_t__ rx; TYPE_1__ msg; int /*<<< orphan*/  dev; void* tx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_RX_STATUS_OK ; 
 int CEC_STATUS_RX_DONE ; 
 int CEC_STATUS_RX_ERROR ; 
 int CEC_STATUS_TX_DONE ; 
 int CEC_STATUS_TX_ERROR ; 
 int CEC_STATUS_TX_NACK ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 scalar_t__ STATE_BUSY ; 
 void* STATE_DONE ; 
 void* STATE_ERROR ; 
 scalar_t__ STATE_IDLE ; 
 void* STATE_NACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_cec_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct s5p_cec_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *priv)
{
	struct s5p_cec_dev *cec = priv;
	u32 status = 0;

	status = FUNC3(cec);

	FUNC0(cec->dev, "irq received\n");

	if (status & CEC_STATUS_TX_DONE) {
		if (status & CEC_STATUS_TX_NACK) {
			FUNC0(cec->dev, "CEC_STATUS_TX_NACK set\n");
			cec->tx = STATE_NACK;
		} else if (status & CEC_STATUS_TX_ERROR) {
			FUNC0(cec->dev, "CEC_STATUS_TX_ERROR set\n");
			cec->tx = STATE_ERROR;
		} else {
			FUNC0(cec->dev, "CEC_STATUS_TX_DONE\n");
			cec->tx = STATE_DONE;
		}
		FUNC6(cec);
	}

	if (status & CEC_STATUS_RX_DONE) {
		if (status & CEC_STATUS_RX_ERROR) {
			FUNC0(cec->dev, "CEC_STATUS_RX_ERROR set\n");
			FUNC4(cec);
			FUNC1(cec);
		} else {
			FUNC0(cec->dev, "CEC_STATUS_RX_DONE set\n");
			if (cec->rx != STATE_IDLE)
				FUNC0(cec->dev, "Buffer overrun (worker did not process previous message)\n");
			cec->rx = STATE_BUSY;
			cec->msg.len = status >> 24;
			cec->msg.rx_status = CEC_RX_STATUS_OK;
			FUNC2(cec, cec->msg.len,
					cec->msg.msg);
			cec->rx = STATE_DONE;
			FUNC1(cec);
		}
		/* Clear interrupt pending bit */
		FUNC5(cec);
	}
	return IRQ_WAKE_THREAD;
}