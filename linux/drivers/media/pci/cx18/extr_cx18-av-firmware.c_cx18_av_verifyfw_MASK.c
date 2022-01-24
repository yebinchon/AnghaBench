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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct firmware {int size; scalar_t__* data; } ;
struct TYPE_2__ {struct v4l2_subdev sd; } ;
struct cx18 {TYPE_1__ av_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CXADEC_DL_CTL ; 
 int EIO ; 
 int /*<<< orphan*/  FWFILE ; 
 int FUNC2 (struct cx18*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct cx18 *cx, const struct firmware *fw)
{
	struct v4l2_subdev *sd = &cx->av_state.sd;
	int ret = 0;
	const u8 *data;
	u32 size;
	int addr;
	u32 expected, dl_control;

	/* Ensure we put the 8051 in reset and enable firmware upload mode */
	dl_control = FUNC2(cx, CXADEC_DL_CTL);
	do {
		dl_control &= 0x00ffffff;
		dl_control |= 0x0f000000;
		FUNC3(cx, CXADEC_DL_CTL, dl_control);
		dl_control = FUNC2(cx, CXADEC_DL_CTL);
	} while ((dl_control & 0xff000000) != 0x0f000000);

	/* Read and auto increment until at address 0x0000 */
	while (dl_control & 0x3fff)
		dl_control = FUNC2(cx, CXADEC_DL_CTL);

	data = fw->data;
	size = fw->size;
	for (addr = 0; addr < size; addr++) {
		dl_control &= 0xffff3fff; /* ignore top 2 bits of address */
		expected = 0x0f000000 | ((u32)data[addr] << 16) | addr;
		if (expected != dl_control) {
			FUNC0(sd, "verification of %s firmware load failed: expected %#010x got %#010x\n",
				     FWFILE, expected, dl_control);
			ret = -EIO;
			break;
		}
		dl_control = FUNC2(cx, CXADEC_DL_CTL);
	}
	if (ret == 0)
		FUNC1(sd, "verified load of %s firmware (%d bytes)\n",
			      FWFILE, size);
	return ret;
}