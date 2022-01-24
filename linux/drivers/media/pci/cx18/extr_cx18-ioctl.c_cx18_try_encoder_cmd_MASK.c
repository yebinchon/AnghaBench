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
struct file {int dummy; } ;
struct cx18 {int dummy; } ;
struct TYPE_2__ {struct cx18* cx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
#define  V4L2_ENC_CMD_PAUSE 131 
#define  V4L2_ENC_CMD_RESUME 130 
#define  V4L2_ENC_CMD_START 129 
#define  V4L2_ENC_CMD_STOP 128 
 int /*<<< orphan*/  V4L2_ENC_CMD_STOP_AT_GOP_END ; 
 TYPE_1__* FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
				struct v4l2_encoder_cmd *enc)
{
	struct cx18 *cx = FUNC1(fh)->cx;

	switch (enc->cmd) {
	case V4L2_ENC_CMD_START:
		FUNC0("V4L2_ENC_CMD_START\n");
		enc->flags = 0;
		break;

	case V4L2_ENC_CMD_STOP:
		FUNC0("V4L2_ENC_CMD_STOP\n");
		enc->flags &= V4L2_ENC_CMD_STOP_AT_GOP_END;
		break;

	case V4L2_ENC_CMD_PAUSE:
		FUNC0("V4L2_ENC_CMD_PAUSE\n");
		enc->flags = 0;
		break;

	case V4L2_ENC_CMD_RESUME:
		FUNC0("V4L2_ENC_CMD_RESUME\n");
		enc->flags = 0;
		break;

	default:
		FUNC0("Unknown cmd %d\n", enc->cmd);
		return -EINVAL;
	}
	return 0;
}