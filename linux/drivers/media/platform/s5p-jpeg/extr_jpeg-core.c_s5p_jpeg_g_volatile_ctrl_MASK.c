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
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; } ;
struct s5p_jpeg_ctx {struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg {int /*<<< orphan*/  slock; } ;

/* Variables and functions */
#define  V4L2_CID_JPEG_CHROMA_SUBSAMPLING 128 
 struct s5p_jpeg_ctx* FUNC0 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct v4l2_ctrl *ctrl)
{
	struct s5p_jpeg_ctx *ctx = FUNC0(ctrl);
	struct s5p_jpeg *jpeg = ctx->jpeg;
	unsigned long flags;

	switch (ctrl->id) {
	case V4L2_CID_JPEG_CHROMA_SUBSAMPLING:
		FUNC2(&jpeg->slock, flags);
		ctrl->val = FUNC1(ctx);
		FUNC3(&jpeg->slock, flags);
		break;
	}

	return 0;
}