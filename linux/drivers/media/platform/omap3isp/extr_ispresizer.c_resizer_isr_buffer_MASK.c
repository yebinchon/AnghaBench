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
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct isp_res_device {scalar_t__ state; scalar_t__ input; int /*<<< orphan*/  video_in; int /*<<< orphan*/  video_out; TYPE_1__ subdev; } ;
struct isp_pipeline {int /*<<< orphan*/  state; } ;
struct isp_buffer {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP_PIPELINE_IDLE_INPUT ; 
 int /*<<< orphan*/  ISP_PIPELINE_IDLE_OUTPUT ; 
 scalar_t__ ISP_PIPELINE_STREAM_SINGLESHOT ; 
 scalar_t__ ISP_PIPELINE_STREAM_STOPPED ; 
 scalar_t__ RESIZER_INPUT_MEMORY ; 
 scalar_t__ FUNC0 (struct isp_pipeline*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_pipeline*,scalar_t__) ; 
 struct isp_buffer* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_res_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_res_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_res_device*,int /*<<< orphan*/ ) ; 
 struct isp_pipeline* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct isp_res_device *res)
{
	struct isp_pipeline *pipe = FUNC6(&res->subdev.entity);
	struct isp_buffer *buffer;
	int restart = 0;

	if (res->state == ISP_PIPELINE_STREAM_STOPPED)
		return;

	/* Complete the output buffer and, if reading from memory, the input
	 * buffer.
	 */
	buffer = FUNC2(&res->video_out);
	if (buffer != NULL) {
		FUNC5(res, buffer->dma);
		restart = 1;
	}

	pipe->state |= ISP_PIPELINE_IDLE_OUTPUT;

	if (res->input == RESIZER_INPUT_MEMORY) {
		buffer = FUNC2(&res->video_in);
		if (buffer != NULL)
			FUNC4(res, buffer->dma);
		pipe->state |= ISP_PIPELINE_IDLE_INPUT;
	}

	if (res->state == ISP_PIPELINE_STREAM_SINGLESHOT) {
		if (FUNC0(pipe))
			FUNC1(pipe,
						ISP_PIPELINE_STREAM_SINGLESHOT);
	} else {
		/* If an underrun occurs, the video queue operation handler will
		 * restart the resizer. Otherwise restart it immediately.
		 */
		if (restart)
			FUNC3(res);
	}
}