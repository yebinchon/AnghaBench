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
struct v4l2_requestbuffers {scalar_t__ type; scalar_t__ count; } ;
struct coda_q_data {int dummy; } ;
struct coda_ctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int FUNC0 (struct coda_ctx*,struct coda_q_data*) ; 
 int FUNC1 (struct coda_ctx*,struct coda_q_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct coda_ctx*) ; 
 struct coda_q_data* FUNC4 (struct coda_ctx*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct coda_ctx *ctx,
				struct v4l2_requestbuffers *rb)
{
	struct coda_q_data *q_data_src;
	int ret;

	if (rb->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
		return 0;

	if (rb->count) {
		q_data_src = FUNC4(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
		ret = FUNC1(ctx, q_data_src);
		if (ret < 0)
			return ret;
		ret = FUNC0(ctx, q_data_src);
		if (ret < 0) {
			FUNC3(ctx);
			return ret;
		}
	} else {
		FUNC2(ctx);
		FUNC3(ctx);
	}

	return 0;
}