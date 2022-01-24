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
struct isp_prev_device {int output; scalar_t__ input; int state; int /*<<< orphan*/  video_in; int /*<<< orphan*/  video_out; TYPE_1__ subdev; } ;
struct isp_pipeline {int /*<<< orphan*/  state; } ;
struct isp_buffer {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP_PIPELINE_IDLE_INPUT ; 
 int /*<<< orphan*/  ISP_PIPELINE_IDLE_OUTPUT ; 
#define  ISP_PIPELINE_STREAM_CONTINUOUS 130 
#define  ISP_PIPELINE_STREAM_SINGLESHOT 129 
#define  ISP_PIPELINE_STREAM_STOPPED 128 
 scalar_t__ PREVIEW_INPUT_MEMORY ; 
 int PREVIEW_OUTPUT_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct isp_pipeline*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_pipeline*,int const) ; 
 struct isp_buffer* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_prev_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_prev_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_prev_device*,int /*<<< orphan*/ ) ; 
 struct isp_pipeline* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct isp_prev_device *prev)
{
	struct isp_pipeline *pipe = FUNC6(&prev->subdev.entity);
	struct isp_buffer *buffer;
	int restart = 0;

	if (prev->output & PREVIEW_OUTPUT_MEMORY) {
		buffer = FUNC2(&prev->video_out);
		if (buffer != NULL) {
			FUNC5(prev, buffer->dma);
			restart = 1;
		}
		pipe->state |= ISP_PIPELINE_IDLE_OUTPUT;
	}

	if (prev->input == PREVIEW_INPUT_MEMORY) {
		buffer = FUNC2(&prev->video_in);
		if (buffer != NULL)
			FUNC4(prev, buffer->dma);
		pipe->state |= ISP_PIPELINE_IDLE_INPUT;
	}

	switch (prev->state) {
	case ISP_PIPELINE_STREAM_SINGLESHOT:
		if (FUNC0(pipe))
			FUNC1(pipe,
						ISP_PIPELINE_STREAM_SINGLESHOT);
		break;

	case ISP_PIPELINE_STREAM_CONTINUOUS:
		/* If an underrun occurs, the video queue operation handler will
		 * restart the preview engine. Otherwise restart it immediately.
		 */
		if (restart)
			FUNC3(prev);
		break;

	case ISP_PIPELINE_STREAM_STOPPED:
	default:
		return;
	}
}