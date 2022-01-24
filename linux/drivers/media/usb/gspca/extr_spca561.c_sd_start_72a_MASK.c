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
struct sd {int /*<<< orphan*/  autogain; int /*<<< orphan*/  contrast; int /*<<< orphan*/  hue; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  rev72a_init_data1 ; 
 int /*<<< orphan*/  rev72a_init_sensor1 ; 
 int /*<<< orphan*/  rev72a_init_sensor2 ; 
 int /*<<< orphan*/  rev72a_reset ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gspca_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int Clck;
	int mode;

	FUNC6(gspca_dev, rev72a_reset);
	FUNC0(200);
	FUNC6(gspca_dev, rev72a_init_data1);
	FUNC5(gspca_dev, rev72a_init_sensor1);

	mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;
	switch (mode) {
	default:
	case 0:
		Clck = 0x27;		/* ms-win 0x87 */
		break;
	case 1:
		Clck = 0x25;
		break;
	case 2:
		Clck = 0x22;
		break;
	case 3:
		Clck = 0x21;
		break;
	}
	FUNC1(gspca_dev, 0x8700, Clck);	/* 0x27 clock */
	FUNC1(gspca_dev, 0x8702, 0x81);
	FUNC1(gspca_dev, 0x8500, mode);	/* mode */
	FUNC5(gspca_dev, rev72a_init_sensor2);
	FUNC3(gspca_dev, FUNC4(sd->hue),
			FUNC4(sd->contrast));
/*	setbrightness(gspca_dev);	 * fixme: bad values */
	FUNC2(gspca_dev, FUNC4(sd->autogain));
	FUNC1(gspca_dev, 0x8112, 0x10 | 0x20);
	return 0;
}