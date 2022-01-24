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
struct isp_pipeline {int /*<<< orphan*/  state; } ;
struct isp_device {int /*<<< orphan*/  crashed; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmaqueue; } ;
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct isp_ccdc_device {scalar_t__ state; TYPE_2__ video_out; TYPE_1__ subdev; scalar_t__ underrun; } ;
struct isp_buffer {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP_PIPELINE_IDLE_OUTPUT ; 
 scalar_t__ ISP_PIPELINE_STREAM_CONTINUOUS ; 
 scalar_t__ ISP_PIPELINE_STREAM_SINGLESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct isp_ccdc_device*) ; 
 scalar_t__ FUNC1 (struct isp_ccdc_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct isp_pipeline*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct isp_pipeline*) ; 
 int /*<<< orphan*/  FUNC8 (struct isp_pipeline*,scalar_t__) ; 
 struct isp_buffer* FUNC9 (TYPE_2__*) ; 
 struct isp_device* FUNC10 (struct isp_ccdc_device*) ; 
 struct isp_pipeline* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct isp_ccdc_device *ccdc)
{
	struct isp_pipeline *pipe = FUNC11(&ccdc->subdev.entity);
	struct isp_device *isp = FUNC10(ccdc);
	struct isp_buffer *buffer;

	/* The CCDC generates VD0 interrupts even when disabled (the datasheet
	 * doesn't explicitly state if that's supposed to happen or not, so it
	 * can be considered as a hardware bug or as a feature, but we have to
	 * deal with it anyway). Disabling the CCDC when no buffer is available
	 * would thus not be enough, we need to handle the situation explicitly.
	 */
	if (FUNC5(&ccdc->video_out.dmaqueue))
		return 0;

	/* We're in continuous mode, and memory writes were disabled due to a
	 * buffer underrun. Re-enable them now that we have a buffer. The buffer
	 * address has been set in ccdc_video_queue.
	 */
	if (ccdc->state == ISP_PIPELINE_STREAM_CONTINUOUS && ccdc->underrun) {
		ccdc->underrun = 0;
		return 1;
	}

	/* Wait for the CCDC to become idle. */
	if (FUNC1(ccdc, 1000)) {
		FUNC3(isp->dev, "CCDC won't become idle!\n");
		FUNC6(&isp->crashed, &ccdc->subdev.entity);
		FUNC7(pipe);
		return 0;
	}

	if (!FUNC0(ccdc))
		return 1;

	buffer = FUNC9(&ccdc->video_out);
	if (buffer != NULL)
		FUNC2(ccdc, buffer->dma);

	pipe->state |= ISP_PIPELINE_IDLE_OUTPUT;

	if (ccdc->state == ISP_PIPELINE_STREAM_SINGLESHOT &&
	    FUNC4(pipe))
		FUNC8(pipe,
					ISP_PIPELINE_STREAM_SINGLESHOT);

	return buffer != NULL;
}