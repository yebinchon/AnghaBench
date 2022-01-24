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
struct sd {int video_mode; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gspca_dev*,int) ; 
 int FUNC2 (struct gspca_dev*,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	int ret;
	struct sd *sd = (struct sd *) gspca_dev;

	ret = FUNC1(gspca_dev, sd->video_mode);
	if (ret < 0)
		return ret;

	if (FUNC2(gspca_dev, 0, 0x85, 0, 0x10) != 0x10)
		return FUNC0(gspca_dev, -EIO);

	/* Start stream at:
	   0x0000 = CIF (352x288)
	   0x0100 = VGA (640x480)
	   0x0300 = QVGA (320x240) */
	if (FUNC2(gspca_dev, 1, 0x09, sd->video_mode << 8, 0x0) != 0x0)
		return FUNC0(gspca_dev, -EIO);

	return 0;
}