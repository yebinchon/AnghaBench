#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ header; int ape_voltage_status; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ ack; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 scalar_t__ MB1H_RELEASE_APE_OPP_100_VOLT ; 
 scalar_t__ MB1H_REQUEST_APE_OPP_100_VOLT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_SET ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_VAL ; 
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB1 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ mb1_transfer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ tcdm_base ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

int FUNC9(bool enable)
{
	int r = 0;
	u8 header;
	static unsigned int requests;

	FUNC3(&mb1_transfer.lock);

	if (enable) {
		if (0 != requests++)
			goto unlock_and_return;
		header = MB1H_REQUEST_APE_OPP_100_VOLT;
	} else {
		if (requests == 0) {
			r = -EIO;
			goto unlock_and_return;
		} else if (1 != requests--) {
			goto unlock_and_return;
		}
		header = MB1H_RELEASE_APE_OPP_100_VOLT;
	}

	while (FUNC5(PRCM_MBOX_CPU_VAL) & FUNC1(1))
		FUNC2();

	FUNC7(header, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB1));

	FUNC8(FUNC1(1), PRCM_MBOX_CPU_SET);
	FUNC6(&mb1_transfer.work);

	if ((mb1_transfer.ack.header != header) ||
		((mb1_transfer.ack.ape_voltage_status & FUNC0(0)) != 0))
		r = -EIO;

unlock_and_return:
	FUNC4(&mb1_transfer.lock);

	return r;
}