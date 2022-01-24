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
struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ SENSOR_OV361x ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	if (((struct sd *)gspca_dev)->sensor == SENSOR_OV361x) {
		FUNC0(gspca_dev, 0xe0, 0x01); /* stop transfer */
		/* reg_w(gspca_dev, 0x31, 0x09); */
		return;
	}
	FUNC0(gspca_dev, 0xe0, 0x01);
	FUNC1(gspca_dev, 0);
	FUNC0(gspca_dev, 0xe0, 0x00);
}