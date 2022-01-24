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
struct v4l2_subdev {int dummy; } ;
struct fimc_source_info {int dummy; } ;
struct fimc_sensor_info {int /*<<< orphan*/  host; } ;
struct fimc_md {int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct fimc_sensor_info* FUNC1 (struct fimc_source_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fimc_source_info* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC6(struct fimc_md *fmd,
					struct v4l2_subdev *sensor,
					struct v4l2_subdev *fimc_sd)
{
	struct fimc_source_info *src_inf;
	struct fimc_sensor_info *md_si;
	unsigned long flags;

	src_inf = FUNC4(sensor);
	if (!src_inf || FUNC0(fmd == NULL))
		return;

	md_si = FUNC1(src_inf);
	FUNC2(&fmd->slock, flags);
	md_si->host = FUNC5(fimc_sd);
	FUNC3(&fmd->slock, flags);
}