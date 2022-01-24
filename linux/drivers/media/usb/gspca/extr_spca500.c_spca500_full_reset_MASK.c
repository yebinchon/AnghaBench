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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,char*) ; 
 int FUNC1 (struct gspca_dev*,int,int,int) ; 
 int FUNC2 (struct gspca_dev*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	int err;

	/* send the reset command */
	err = FUNC2(gspca_dev, 0xe0, 0x0001, 0x0000);
	if (err < 0)
		return err;

	/* wait for the reset to complete */
	err = FUNC1(gspca_dev, 0x06, 0x0000, 0x0000);
	if (err < 0)
		return err;
	err = FUNC2(gspca_dev, 0xe0, 0x0000, 0x0000);
	if (err < 0)
		return err;
	err = FUNC1(gspca_dev, 0x06, 0, 0);
	if (err < 0) {
		FUNC0(gspca_dev, "reg_r_wait() failed\n");
		return err;
	}
	/* all ok */
	return 0;
}