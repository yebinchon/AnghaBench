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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  active; } ;
struct isp_prev_device {scalar_t__ input; int output; scalar_t__ state; TYPE_1__ params; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 scalar_t__ ISP_PIPELINE_STREAM_CONTINUOUS ; 
 scalar_t__ PREVIEW_INPUT_MEMORY ; 
 int PREVIEW_OUTPUT_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_prev_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_prev_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_prev_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_prev_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_prev_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_prev_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct isp_prev_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(struct isp_prev_device *prev)
{
	unsigned long flags;
	u32 update;
	u32 active;

	if (FUNC0(&prev->wait, &prev->stopping))
		return;

	FUNC8(&prev->params.lock, flags);
	FUNC5(prev);
	update = FUNC4(prev, 0, false);
	active = prev->params.active;
	FUNC9(&prev->params.lock, flags);

	FUNC7(prev, update, active);
	FUNC1(prev, active);

	if (prev->input == PREVIEW_INPUT_MEMORY ||
	    prev->output & PREVIEW_OUTPUT_MEMORY)
		FUNC3(prev);
	else if (prev->state == ISP_PIPELINE_STREAM_CONTINUOUS)
		FUNC2(prev);

	FUNC8(&prev->params.lock, flags);
	FUNC6(prev, update, false);
	FUNC9(&prev->params.lock, flags);
}