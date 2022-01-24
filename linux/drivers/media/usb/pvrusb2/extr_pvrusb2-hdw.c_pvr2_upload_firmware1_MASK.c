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
typedef  unsigned int u16 ;
struct pvr2_hdw {int /*<<< orphan*/  fw1_state; int /*<<< orphan*/  usb_dev; TYPE_2__* hdw_desc; } ;
struct firmware {unsigned int size; scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  lst; int /*<<< orphan*/  cnt; } ;
struct TYPE_4__ {scalar_t__ flag_fx2_16kb; TYPE_1__ fx2_firmware; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FW1_STATE_FAILED ; 
 int /*<<< orphan*/  FW1_STATE_MISSING ; 
 int /*<<< orphan*/  FW1_STATE_OK ; 
 int /*<<< orphan*/  FW1_STATE_RELOAD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_hdw*,int) ; 
 int FUNC4 (struct pvr2_hdw*,struct firmware const**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,unsigned int,int,int,unsigned int,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct pvr2_hdw *hdw)
{
	const struct firmware *fw_entry = NULL;
	void  *fw_ptr;
	unsigned int pipe;
	unsigned int fwsize;
	int ret;
	u16 address;

	if (!hdw->hdw_desc->fx2_firmware.cnt) {
		hdw->fw1_state = FW1_STATE_OK;
		FUNC5(PVR2_TRACE_ERROR_LEGS,
			   "Connected device type defines no firmware to upload; ignoring firmware");
		return -ENOTTY;
	}

	hdw->fw1_state = FW1_STATE_FAILED; // default result

	FUNC7("pvr2_upload_firmware1");

	ret = FUNC4(hdw,&fw_entry,"fx2 controller",
				   hdw->hdw_desc->fx2_firmware.cnt,
				   hdw->hdw_desc->fx2_firmware.lst);
	if (ret < 0) {
		if (ret == -ENOENT) hdw->fw1_state = FW1_STATE_MISSING;
		return ret;
	}

	FUNC8(hdw->usb_dev, FUNC10(hdw->usb_dev, 0 & 0x7f));

	pipe = FUNC11(hdw->usb_dev, 0);
	fwsize = fw_entry->size;

	if ((fwsize != 0x2000) &&
	    (!(hdw->hdw_desc->flag_fx2_16kb && (fwsize == 0x4000)))) {
		if (hdw->hdw_desc->flag_fx2_16kb) {
			FUNC5(PVR2_TRACE_ERROR_LEGS,
				   "Wrong fx2 firmware size (expected 8192 or 16384, got %u)",
				   fwsize);
		} else {
			FUNC5(PVR2_TRACE_ERROR_LEGS,
				   "Wrong fx2 firmware size (expected 8192, got %u)",
				   fwsize);
		}
		FUNC6(fw_entry);
		return -ENOMEM;
	}

	fw_ptr = FUNC1(0x800, GFP_KERNEL);
	if (fw_ptr == NULL){
		FUNC6(fw_entry);
		return -ENOMEM;
	}

	/* We have to hold the CPU during firmware upload. */
	FUNC3(hdw,1);

	/* upload the firmware to address 0000-1fff in 2048 (=0x800) bytes
	   chunk. */

	ret = 0;
	for (address = 0; address < fwsize; address += 0x800) {
		FUNC2(fw_ptr, fw_entry->data + address, 0x800);
		ret += FUNC9(hdw->usb_dev, pipe, 0xa0, 0x40, address,
				       0, fw_ptr, 0x800, HZ);
	}

	FUNC7("Upload done, releasing device's CPU");

	/* Now release the CPU.  It will disconnect and reconnect later. */
	FUNC3(hdw,0);

	FUNC0(fw_ptr);
	FUNC6(fw_entry);

	FUNC7("Upload done (%d bytes sent)",ret);

	/* We should have written fwsize bytes */
	if (ret == fwsize) {
		hdw->fw1_state = FW1_STATE_RELOAD;
		return 0;
	}

	return -EIO;
}