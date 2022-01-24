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
struct sd {int /*<<< orphan*/  gain; int /*<<< orphan*/  exposure; scalar_t__ do_ctrl; } ;
struct TYPE_2__ {scalar_t__ bulk_nurbs; } ;
struct gspca_dev {int /*<<< orphan*/ * urb; TYPE_1__ cam; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int ret;

	if (!sd->do_ctrl || gspca_dev->cam.bulk_nurbs != 0)
		return;
	sd->do_ctrl = 0;

	FUNC2(gspca_dev, FUNC4(sd->exposure),
			FUNC4(sd->gain));

	gspca_dev->cam.bulk_nurbs = 1;
	ret = FUNC3(gspca_dev->urb[0], GFP_KERNEL);
	if (ret < 0)
		FUNC1("sd_dq_callback() err %d\n", ret);

	/* wait a little time, otherwise the webcam crashes */
	FUNC0(100);
}