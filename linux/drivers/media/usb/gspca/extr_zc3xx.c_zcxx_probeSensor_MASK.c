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
struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
#define  SENSOR_GC0303 130 
#define  SENSOR_MC501CB 129 
#define  SENSOR_PAS106 128 
 int FUNC0 (struct gspca_dev*) ; 
 int FUNC1 (struct gspca_dev*) ; 
 int FUNC2 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int sensor;

	switch (sd->sensor) {
	case SENSOR_MC501CB:
		return -1;		/* don't probe */
	case SENSOR_GC0303:
			/* may probe but with no write in reg 0x0010 */
		return -1;		/* don't probe */
	case SENSOR_PAS106:
		sensor =  FUNC0(gspca_dev);
		if (sensor >= 0)
			return sensor;
		break;
	}
	sensor = FUNC1(gspca_dev);
	if (sensor >= 0)
		return sensor;
	return FUNC2(gspca_dev);
}