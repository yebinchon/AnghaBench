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
typedef  int u16 ;
struct secocec_data {int /*<<< orphan*/  cec_adap; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SECOCEC_STATUS ; 
 int SECOCEC_STATUS_MSG_RECEIVED_MASK ; 
 int SECOCEC_STATUS_MSG_SENT_MASK ; 
 int /*<<< orphan*/  SECOCEC_STATUS_REG_1 ; 
 int SECOCEC_STATUS_REG_1_CEC ; 
 int SECOCEC_STATUS_REG_1_IR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct secocec_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *priv)
{
	struct secocec_data *cec = priv;
	struct device *dev = cec->dev;
	u16 status_val, cec_val, val = 0;
	int status;

	/*  Read status register */
	status = FUNC5(SECOCEC_STATUS_REG_1, &status_val);
	if (status)
		goto err;

	if (status_val & SECOCEC_STATUS_REG_1_CEC) {
		/* Read CEC status register */
		status = FUNC5(SECOCEC_STATUS, &cec_val);
		if (status)
			goto err;

		if (cec_val & SECOCEC_STATUS_MSG_RECEIVED_MASK)
			FUNC3(cec->cec_adap, cec_val);

		if (cec_val & SECOCEC_STATUS_MSG_SENT_MASK)
			FUNC4(cec->cec_adap, cec_val);

		if ((~cec_val & SECOCEC_STATUS_MSG_SENT_MASK) &&
		    (~cec_val & SECOCEC_STATUS_MSG_RECEIVED_MASK))
			FUNC1(dev,
				      "Message not received or sent, but interrupt fired");

		val = SECOCEC_STATUS_REG_1_CEC;
	}

	if (status_val & SECOCEC_STATUS_REG_1_IR) {
		val |= SECOCEC_STATUS_REG_1_IR;

		FUNC2(cec);
	}

	/*  Reset status register */
	status = FUNC6(SECOCEC_STATUS_REG_1, val);
	if (status)
		goto err;

	return IRQ_HANDLED;

err:
	FUNC0(dev, "IRQ: R/W SMBus operation failed (%d)", status);

	/*  Reset status register */
	val = SECOCEC_STATUS_REG_1_CEC | SECOCEC_STATUS_REG_1_IR;
	FUNC6(SECOCEC_STATUS_REG_1, val);

	return IRQ_HANDLED;
}