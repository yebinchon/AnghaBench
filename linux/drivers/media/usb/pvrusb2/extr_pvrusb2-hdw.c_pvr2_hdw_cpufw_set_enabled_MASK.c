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
typedef  scalar_t__ u16 ;
struct pvr2_hdw {int fw_size; int fw_cpu_flag; scalar_t__ fw_buffer; int /*<<< orphan*/  big_lock; int /*<<< orphan*/  usb_dev; } ;

/* Variables and functions */
 scalar_t__ EEPROM_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PVR2_TRACE_FIRMWARE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_hdw*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned int,int,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct pvr2_hdw *hdw,
				int mode,
				int enable_flag)
{
	int ret;
	u16 address;
	unsigned int pipe;
	FUNC1(hdw->big_lock); do {
		if ((hdw->fw_buffer == NULL) == !enable_flag) break;

		if (!enable_flag) {
			FUNC6(PVR2_TRACE_FIRMWARE,
				   "Cleaning up after CPU firmware fetch");
			FUNC2(hdw->fw_buffer);
			hdw->fw_buffer = NULL;
			hdw->fw_size = 0;
			if (hdw->fw_cpu_flag) {
				/* Now release the CPU.  It will disconnect
				   and reconnect later. */
				FUNC5(hdw,0);
			}
			break;
		}

		hdw->fw_cpu_flag = (mode != 2);
		if (hdw->fw_cpu_flag) {
			hdw->fw_size = (mode == 1) ? 0x4000 : 0x2000;
			FUNC6(PVR2_TRACE_FIRMWARE,
				   "Preparing to suck out CPU firmware (size=%u)",
				   hdw->fw_size);
			hdw->fw_buffer = FUNC3(hdw->fw_size,GFP_KERNEL);
			if (!hdw->fw_buffer) {
				hdw->fw_size = 0;
				break;
			}

			/* We have to hold the CPU during firmware upload. */
			FUNC5(hdw,1);

			/* download the firmware from address 0000-1fff in 2048
			   (=0x800) bytes chunk. */

			FUNC6(PVR2_TRACE_FIRMWARE,
				   "Grabbing CPU firmware");
			pipe = FUNC8(hdw->usb_dev, 0);
			for(address = 0; address < hdw->fw_size;
			    address += 0x800) {
				ret = FUNC7(hdw->usb_dev,pipe,
						      0xa0,0xc0,
						      address,0,
						      hdw->fw_buffer+address,
						      0x800,HZ);
				if (ret < 0) break;
			}

			FUNC6(PVR2_TRACE_FIRMWARE,
				   "Done grabbing CPU firmware");
		} else {
			FUNC6(PVR2_TRACE_FIRMWARE,
				   "Sucking down EEPROM contents");
			hdw->fw_buffer = FUNC4(hdw);
			if (!hdw->fw_buffer) {
				FUNC6(PVR2_TRACE_FIRMWARE,
					   "EEPROM content suck failed.");
				break;
			}
			hdw->fw_size = EEPROM_SIZE;
			FUNC6(PVR2_TRACE_FIRMWARE,
				   "Done sucking down EEPROM contents");
		}

	} while (0); FUNC0(hdw->big_lock);
}