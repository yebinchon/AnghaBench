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
struct venc_h264_inst {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int H264_FILLER_MARKER_SIZE ; 
 int /*<<< orphan*/  h264_filler_marker ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct venc_h264_inst*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct venc_h264_inst *inst, void *buf,
			       int size)
{
	unsigned char *p = buf;

	if (size < H264_FILLER_MARKER_SIZE) {
		FUNC3(inst, "filler size too small %d", size);
		return;
	}

	FUNC1(p, h264_filler_marker, FUNC0(h264_filler_marker));
	size -= H264_FILLER_MARKER_SIZE;
	p += H264_FILLER_MARKER_SIZE;
	FUNC2(p, 0xff, size);
}