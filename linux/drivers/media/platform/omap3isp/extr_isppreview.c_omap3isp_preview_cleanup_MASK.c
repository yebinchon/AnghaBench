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
struct isp_prev_device {TYPE_1__ subdev; int /*<<< orphan*/  video_out; int /*<<< orphan*/  video_in; int /*<<< orphan*/  ctrls; } ;
struct isp_device {struct isp_prev_device isp_prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct isp_device *isp)
{
	struct isp_prev_device *prev = &isp->isp_prev;

	FUNC2(&prev->ctrls);
	FUNC1(&prev->video_in);
	FUNC1(&prev->video_out);
	FUNC0(&prev->subdev.entity);
}