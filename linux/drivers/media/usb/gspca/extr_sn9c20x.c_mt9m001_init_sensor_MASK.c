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
typedef  int u16 ;
struct sd {int hstart; int vstart; } ;
struct gspca_dev {scalar_t__ usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt9m001_init ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	u16 id;

	FUNC1(gspca_dev, 0x00, &id);
	if (gspca_dev->usb_err < 0)
		return;

	/* must be 0x8411 or 0x8421 for colour sensor and 8431 for bw */
	switch (id) {
	case 0x8411:
	case 0x8421:
		FUNC4("MT9M001 color sensor detected\n");
		break;
	case 0x8431:
		FUNC4("MT9M001 mono sensor detected\n");
		break;
	default:
		FUNC3("No MT9M001 chip detected, ID = %x\n\n", id);
		gspca_dev->usb_err = -ENODEV;
		return;
	}

	FUNC2(gspca_dev, mt9m001_init, FUNC0(mt9m001_init));
	if (gspca_dev->usb_err < 0)
		FUNC3("MT9M001 sensor initialization failed\n");

	sd->hstart = 1;
	sd->vstart = 1;
}