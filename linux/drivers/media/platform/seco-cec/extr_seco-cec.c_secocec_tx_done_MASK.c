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
struct cec_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_TX_STATUS_ERROR ; 
 int /*<<< orphan*/  CEC_TX_STATUS_NACK ; 
 int /*<<< orphan*/  CEC_TX_STATUS_OK ; 
 int /*<<< orphan*/  SECOCEC_STATUS ; 
 int SECOCEC_STATUS_MSG_SENT_MASK ; 
 int SECOCEC_STATUS_TX_ERROR_MASK ; 
 int SECOCEC_STATUS_TX_NACK_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct cec_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct cec_adapter *adap, u16 status_val)
{
	if (status_val & SECOCEC_STATUS_TX_ERROR_MASK) {
		if (status_val & SECOCEC_STATUS_TX_NACK_ERROR)
			FUNC0(adap, CEC_TX_STATUS_NACK);
		else
			FUNC0(adap, CEC_TX_STATUS_ERROR);
	} else {
		FUNC0(adap, CEC_TX_STATUS_OK);
	}

	/* Reset status reg */
	status_val = SECOCEC_STATUS_TX_ERROR_MASK |
		SECOCEC_STATUS_MSG_SENT_MASK |
		SECOCEC_STATUS_TX_NACK_ERROR;
	FUNC1(SECOCEC_STATUS, status_val);
}