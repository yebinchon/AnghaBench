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
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct fimc_lite {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  slock; int /*<<< orphan*/  out_path; int /*<<< orphan*/  sensor; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 scalar_t__ FIMC_IO_ISP ; 
 int /*<<< orphan*/  ST_FLITE_OFF ; 
 int /*<<< orphan*/  ST_FLITE_RUN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct fimc_lite*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC5 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct v4l2_subdev*,char*) ; 
 struct fimc_lite* FUNC15 (struct v4l2_subdev*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct v4l2_subdev *sd, int on)
{
	struct fimc_lite *fimc = FUNC15(sd);
	unsigned long flags;
	int ret;

	/*
	 * Find sensor subdev linked to FIMC-LITE directly or through
	 * MIPI-CSIS. This is required for configuration where FIMC-LITE
	 * is used as a subdev only and feeds data internally to FIMC-IS.
	 * The pipeline links are protected through entity.stream_count
	 * so there is no need to take the media graph mutex here.
	 */
	fimc->sensor = FUNC2(&sd->entity);

	if (FUNC0(&fimc->out_path) != FIMC_IO_ISP)
		return -ENOIOCTLCMD;

	FUNC8(&fimc->lock);
	if (on) {
		FUNC6(fimc);
		ret = FUNC3(fimc, true);
		if (!ret) {
			FUNC11(&fimc->slock, flags);
			FUNC4(fimc);
			FUNC12(&fimc->slock, flags);
		}
	} else {
		FUNC10(ST_FLITE_OFF, &fimc->state);

		FUNC11(&fimc->slock, flags);
		FUNC5(fimc);
		FUNC12(&fimc->slock, flags);

		ret = FUNC16(fimc->irq_queue,
				!FUNC13(ST_FLITE_OFF, &fimc->state),
				FUNC7(200));
		if (ret == 0)
			FUNC14(sd, "s_stream(0) timeout\n");
		FUNC1(ST_FLITE_RUN, &fimc->state);
	}

	FUNC9(&fimc->lock);
	return ret;
}