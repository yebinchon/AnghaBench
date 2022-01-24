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
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/ * msg; } ;
struct stm32_cec {int irq_status; scalar_t__ tx_cnt; int /*<<< orphan*/  adap; int /*<<< orphan*/  regmap; TYPE_1__ tx_msg; } ;

/* Variables and functions */
 int ARBLST ; 
 int /*<<< orphan*/  CEC_CR ; 
 int /*<<< orphan*/  CEC_TXDR ; 
 int /*<<< orphan*/  CEC_TX_STATUS_ARB_LOST ; 
 int /*<<< orphan*/  CEC_TX_STATUS_ERROR ; 
 int /*<<< orphan*/  CEC_TX_STATUS_NACK ; 
 int /*<<< orphan*/  CEC_TX_STATUS_OK ; 
 int TXACKE ; 
 int TXBR ; 
 int TXEND ; 
 int /*<<< orphan*/  TXEOM ; 
 int TXERR ; 
 int TXUDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct stm32_cec *cec, u32 status)
{
	if (status & (TXERR | TXUDR)) {
		FUNC0(cec->adap, CEC_TX_STATUS_ERROR,
				  0, 0, 0, 1);
		return;
	}

	if (status & ARBLST) {
		FUNC0(cec->adap, CEC_TX_STATUS_ARB_LOST,
				  1, 0, 0, 0);
		return;
	}

	if (status & TXACKE) {
		FUNC0(cec->adap, CEC_TX_STATUS_NACK,
				  0, 1, 0, 0);
		return;
	}

	if (cec->irq_status & TXBR) {
		/* send next byte */
		if (cec->tx_cnt < cec->tx_msg.len)
			FUNC2(cec->regmap, CEC_TXDR,
				     cec->tx_msg.msg[cec->tx_cnt++]);

		/* TXEOM is set to command transmission of the last byte */
		if (cec->tx_cnt == cec->tx_msg.len)
			FUNC1(cec->regmap, CEC_CR, TXEOM, TXEOM);
	}

	if (cec->irq_status & TXEND)
		FUNC0(cec->adap, CEC_TX_STATUS_OK, 0, 0, 0, 0);
}