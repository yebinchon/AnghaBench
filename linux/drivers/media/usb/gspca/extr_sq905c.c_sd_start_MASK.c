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
struct sd {int /*<<< orphan*/  work_struct; int /*<<< orphan*/  work_thread; int /*<<< orphan*/  cap_mode; } ;
struct TYPE_4__ {int width; } ;
struct TYPE_3__ {int /*<<< orphan*/  cam_mode; } ;
struct gspca_dev {TYPE_2__ pixfmt; TYPE_1__ cam; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  SQ905C_CAPTURE_HI ; 
 int /*<<< orphan*/  SQ905C_CAPTURE_INDEX ; 
 int /*<<< orphan*/  SQ905C_CAPTURE_MED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *dev = (struct sd *) gspca_dev;
	int ret;

	dev->cap_mode = gspca_dev->cam.cam_mode;
	/* "Open the shutter" and set size, to start capture */
	switch (gspca_dev->pixfmt.width) {
	case 640:
		FUNC1(gspca_dev, D_STREAM, "Start streaming at high resolution\n");
		dev->cap_mode++;
		ret = FUNC4(gspca_dev, SQ905C_CAPTURE_HI,
						SQ905C_CAPTURE_INDEX);
		break;
	default: /* 320 */
		FUNC1(gspca_dev, D_STREAM, "Start streaming at medium resolution\n");
		ret = FUNC4(gspca_dev, SQ905C_CAPTURE_MED,
						SQ905C_CAPTURE_INDEX);
	}

	if (ret < 0) {
		FUNC2(gspca_dev, "Start streaming command failed\n");
		return ret;
	}
	/* Start the workqueue function to do the streaming */
	dev->work_thread = FUNC0(MODULE_NAME);
	FUNC3(dev->work_thread, &dev->work_struct);

	return 0;
}