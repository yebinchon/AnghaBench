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
struct pvr2_hdw {unsigned int fw_size; int /*<<< orphan*/  big_lock; scalar_t__ fw_buffer; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PVR2_TRACE_FIRMWARE ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 

int FUNC4(struct pvr2_hdw *hdw,unsigned int offs,
		       char *buf,unsigned int cnt)
{
	int ret = -EINVAL;
	FUNC1(hdw->big_lock); do {
		if (!buf) break;
		if (!cnt) break;

		if (!hdw->fw_buffer) {
			ret = -EIO;
			break;
		}

		if (offs >= hdw->fw_size) {
			FUNC3(PVR2_TRACE_FIRMWARE,
				   "Read firmware data offs=%d EOF",
				   offs);
			ret = 0;
			break;
		}

		if (offs + cnt > hdw->fw_size) cnt = hdw->fw_size - offs;

		FUNC2(buf,hdw->fw_buffer+offs,cnt);

		FUNC3(PVR2_TRACE_FIRMWARE,
			   "Read firmware data offs=%d cnt=%d",
			   offs,cnt);
		ret = cnt;
	} while (0); FUNC0(hdw->big_lock);

	return ret;
}