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
struct isp_pipeline {scalar_t__ stream_state; int /*<<< orphan*/  input; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 scalar_t__ ISP_PIPELINE_STREAM_SINGLESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct isp_pipeline*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct isp_pipeline *pipe)
{
	int singleshot = pipe->stream_state == ISP_PIPELINE_STREAM_SINGLESHOT;

	FUNC1(pipe->output, !singleshot);
	if (singleshot)
		FUNC1(pipe->input, 0);
	FUNC0(pipe, pipe->stream_state);
}