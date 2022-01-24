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
struct v4l2_encoder_cmd {int cmd; int /*<<< orphan*/  flags; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  V4L2_ENC_CMD_PAUSE 131 
#define  V4L2_ENC_CMD_RESUME 130 
#define  V4L2_ENC_CMD_START 129 
#define  V4L2_ENC_CMD_STOP 128 
 int /*<<< orphan*/  V4L2_ENC_CMD_STOP_AT_GOP_END ; 
 TYPE_1__* FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, struct v4l2_encoder_cmd *enc)
{
	struct ivtv *itv = FUNC1(fh)->itv;

	switch (enc->cmd) {
	case V4L2_ENC_CMD_START:
		FUNC0("V4L2_ENC_CMD_START\n");
		enc->flags = 0;
		return 0;

	case V4L2_ENC_CMD_STOP:
		FUNC0("V4L2_ENC_CMD_STOP\n");
		enc->flags &= V4L2_ENC_CMD_STOP_AT_GOP_END;
		return 0;

	case V4L2_ENC_CMD_PAUSE:
		FUNC0("V4L2_ENC_CMD_PAUSE\n");
		enc->flags = 0;
		return 0;

	case V4L2_ENC_CMD_RESUME:
		FUNC0("V4L2_ENC_CMD_RESUME\n");
		enc->flags = 0;
		return 0;
	default:
		FUNC0("Unknown cmd %d\n", enc->cmd);
		return -EINVAL;
	}
}