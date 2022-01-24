#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_5__ {TYPE_1__ active; } ;
struct TYPE_6__ {int /*<<< orphan*/  entity; } ;
struct isp_res_device {TYPE_2__ crop; struct v4l2_mbus_framefmt* formats; TYPE_3__ subdev; } ;
struct isp_pipeline {unsigned long l3_ick; } ;

/* Variables and functions */
 size_t RESZ_PAD_SOURCE ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 struct isp_pipeline* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct isp_res_device *res,
			       unsigned int *max_rate)
{
	struct isp_pipeline *pipe = FUNC2(&res->subdev.entity);
	const struct v4l2_mbus_framefmt *ofmt = &res->formats[RESZ_PAD_SOURCE];
	unsigned long limit = FUNC1(pipe->l3_ick, 200000000UL);
	unsigned long clock;

	clock = FUNC0((u64)limit * res->crop.active.height, ofmt->height);
	clock = FUNC1(clock, limit / 2);
	*max_rate = FUNC0((u64)clock * res->crop.active.width, ofmt->width);
}