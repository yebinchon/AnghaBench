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
struct gspca_dev {int curr_mode; int usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  ov361x_1024 133 
#define  ov361x_160 132 
#define  ov361x_1600 131 
#define  ov361x_2048 130 
#define  ov361x_320 129 
#define  ov361x_640 128 
 int /*<<< orphan*/  ov361x_bridge_start_1024 ; 
 int /*<<< orphan*/  ov361x_bridge_start_160 ; 
 int /*<<< orphan*/  ov361x_bridge_start_1600 ; 
 int /*<<< orphan*/  ov361x_bridge_start_2048 ; 
 int /*<<< orphan*/  ov361x_bridge_start_320 ; 
 int /*<<< orphan*/  ov361x_bridge_start_640 ; 
 int ov361x_last ; 
 int /*<<< orphan*/  ov361x_start_1024 ; 
 int /*<<< orphan*/  ov361x_start_160 ; 
 int /*<<< orphan*/  ov361x_start_1600 ; 
 int /*<<< orphan*/  ov361x_start_2048 ; 
 int /*<<< orphan*/  ov361x_start_320 ; 
 int /*<<< orphan*/  ov361x_start_640 ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static int FUNC6(struct gspca_dev *gspca_dev)
{
	FUNC5(gspca_dev, 0x12, 0x80);
	FUNC1(20);
	switch (gspca_dev->curr_mode % (ov361x_last)) {
	case ov361x_2048:
		FUNC3(gspca_dev, ov361x_bridge_start_2048,
			    FUNC0(ov361x_bridge_start_2048));
		FUNC4(gspca_dev, ov361x_start_2048,
			     FUNC0(ov361x_start_2048));
		break;
	case ov361x_1600:
		FUNC3(gspca_dev, ov361x_bridge_start_1600,
			    FUNC0(ov361x_bridge_start_1600));
		FUNC4(gspca_dev, ov361x_start_1600,
			     FUNC0(ov361x_start_1600));
		break;
	case ov361x_1024:
		FUNC3(gspca_dev, ov361x_bridge_start_1024,
			    FUNC0(ov361x_bridge_start_1024));
		FUNC4(gspca_dev, ov361x_start_1024,
			     FUNC0(ov361x_start_1024));
		break;
	case ov361x_640:
		FUNC3(gspca_dev, ov361x_bridge_start_640,
			    FUNC0(ov361x_bridge_start_640));
		FUNC4(gspca_dev, ov361x_start_640,
			     FUNC0(ov361x_start_640));
		break;
	case ov361x_320:
		FUNC3(gspca_dev, ov361x_bridge_start_320,
			    FUNC0(ov361x_bridge_start_320));
		FUNC4(gspca_dev, ov361x_start_320,
			     FUNC0(ov361x_start_320));
		break;
	case ov361x_160:
		FUNC3(gspca_dev, ov361x_bridge_start_160,
			    FUNC0(ov361x_bridge_start_160));
		FUNC4(gspca_dev, ov361x_start_160,
			     FUNC0(ov361x_start_160));
		break;
	}
	FUNC2(gspca_dev, 0xe0, 0x00); /* start transfer */

	return gspca_dev->usb_err;
}