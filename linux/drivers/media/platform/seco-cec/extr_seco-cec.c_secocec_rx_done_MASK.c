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
typedef  int u8 ;
typedef  int u16 ;
struct secocec_data {int /*<<< orphan*/  cec_adap; struct device* dev; } ;
struct device {int dummy; } ;
struct cec_msg {int len; int* msg; } ;
struct cec_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_MAX_MSG_SIZE ; 
 int EIO ; 
 scalar_t__ SECOCEC_READ_BYTE0 ; 
 scalar_t__ SECOCEC_READ_DATA_00 ; 
 scalar_t__ SECOCEC_READ_DATA_LENGTH ; 
 scalar_t__ SECOCEC_READ_OPERATION_ID ; 
 int /*<<< orphan*/  SECOCEC_STATUS ; 
 int SECOCEC_STATUS_MSG_RECEIVED_MASK ; 
 int SECOCEC_STATUS_RX_ERROR_MASK ; 
 int SECOCEC_STATUS_RX_OVERFLOW_MASK ; 
 struct secocec_data* FUNC0 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cec_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct cec_adapter *adap, u16 status_val)
{
	struct secocec_data *cec = FUNC0(adap);
	struct device *dev = cec->dev;
	struct cec_msg msg = { };
	bool flag_overflow = false;
	u8 payload_len, i = 0;
	u8 *payload_msg;
	u16 val = 0;
	int status;

	if (status_val & SECOCEC_STATUS_RX_OVERFLOW_MASK) {
		/* NOTE: Untested, it also might not be necessary */
		FUNC2(dev, "Received more than 16 bytes. Discarding");
		flag_overflow = true;
	}

	if (status_val & SECOCEC_STATUS_RX_ERROR_MASK) {
		FUNC2(dev, "Message received with errors. Discarding");
		status = -EIO;
		goto rxerr;
	}

	/* Read message length */
	status = FUNC4(SECOCEC_READ_DATA_LENGTH, &val);
	if (status)
		return;

	/* Device msg len already accounts for the header */
	msg.len = FUNC3(val + 1, CEC_MAX_MSG_SIZE);

	/* Read logical address */
	status = FUNC4(SECOCEC_READ_BYTE0, &val);
	if (status)
		return;

	/* device stores source LA and destination */
	msg.msg[0] = val;

	/* Read operation ID */
	status = FUNC4(SECOCEC_READ_OPERATION_ID, &val);
	if (status)
		return;

	msg.msg[1] = val;

	/* Read data if present */
	if (msg.len > 1) {
		payload_len = msg.len - 2;
		payload_msg = &msg.msg[2];

		/* device stores 2 bytes in every 16-bit val */
		for (i = 0; i < payload_len; i += 2) {
			status = FUNC4(SECOCEC_READ_DATA_00 + i / 2, &val);
			if (status)
				return;

			/* low byte, skipping header */
			payload_msg[i] = val & 0x00ff;

			/* hi byte */
			payload_msg[i + 1] = (val & 0xff00) >> 8;
		}
	}

	FUNC1(cec->cec_adap, &msg);

	/* Reset status reg */
	status_val = SECOCEC_STATUS_MSG_RECEIVED_MASK;
	if (flag_overflow)
		status_val |= SECOCEC_STATUS_RX_OVERFLOW_MASK;

	status = FUNC5(SECOCEC_STATUS, status_val);

	return;

rxerr:
	/* Reset error reg */
	status_val = SECOCEC_STATUS_MSG_RECEIVED_MASK |
		SECOCEC_STATUS_RX_ERROR_MASK;
	if (flag_overflow)
		status_val |= SECOCEC_STATUS_RX_OVERFLOW_MASK;
	FUNC5(SECOCEC_STATUS, status_val);
}