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
struct gspca_dev {int /*<<< orphan*/  alt; int /*<<< orphan*/  iface; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PACK ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	if (FUNC4(gspca_dev->dev, gspca_dev->iface, 0) < 0) {
		FUNC1(gspca_dev, "Set packet size: set interface error\n");
		goto error;
	}
	FUNC3(gspca_dev);

	FUNC2(gspca_dev, 0x0d00, 1);

	/* need alt setting here */
	FUNC0(gspca_dev, D_PACK, "ClickSmart310 sync alt: %d\n",
		  gspca_dev->alt);

	/* Windoze use pipe with altsetting 6 why 7 here */
	if (FUNC4(gspca_dev->dev,
				gspca_dev->iface,
				gspca_dev->alt) < 0) {
		FUNC1(gspca_dev, "Set packet size: set interface error\n");
		goto error;
	}
	return 0;
error:
	return -EBUSY;
}