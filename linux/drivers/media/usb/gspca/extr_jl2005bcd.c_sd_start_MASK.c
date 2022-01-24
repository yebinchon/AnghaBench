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
struct sd {int /*<<< orphan*/  work_struct; int /*<<< orphan*/  cap_mode; } ;
struct TYPE_4__ {int width; } ;
struct TYPE_3__ {int /*<<< orphan*/  cam_mode; } ;
struct gspca_dev {TYPE_2__ pixfmt; TYPE_1__ cam; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct gspca_dev *gspca_dev)
{

	struct sd *sd = (struct sd *) gspca_dev;
	sd->cap_mode = gspca_dev->cam.cam_mode;

	switch (gspca_dev->pixfmt.width) {
	case 640:
		FUNC0(gspca_dev, D_STREAM, "Start streaming at vga resolution\n");
		FUNC3(gspca_dev);
		break;
	case 320:
		FUNC0(gspca_dev, D_STREAM, "Start streaming at qvga resolution\n");
		FUNC4(gspca_dev);
		break;
	case 352:
		FUNC0(gspca_dev, D_STREAM, "Start streaming at cif resolution\n");
		FUNC1(gspca_dev);
		break;
	case 176:
		FUNC0(gspca_dev, D_STREAM, "Start streaming at qcif resolution\n");
		FUNC2(gspca_dev);
		break;
	default:
		FUNC5("Unknown resolution specified\n");
		return -1;
	}

	FUNC6(&sd->work_struct);

	return 0;
}