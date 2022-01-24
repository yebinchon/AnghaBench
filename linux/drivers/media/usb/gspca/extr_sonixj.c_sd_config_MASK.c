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
struct usb_device_id {int driver_info; } ;
struct sd {int bridge; int sensor; int flags; int ag_cnt; int /*<<< orphan*/  work; int /*<<< orphan*/  quality; } ;
struct cam {int npkt; void* nmodes; void* cam_mode; } ;
struct gspca_dev {struct cam cam; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUALITY_DEF ; 
 int SENSOR_ADCM1700 ; 
 void* cif_mode ; 
 int /*<<< orphan*/  qual_upd ; 
 void* vga_mode ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev,
			const struct usb_device_id *id)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct cam *cam;

	sd->bridge = id->driver_info >> 16;
	sd->sensor = id->driver_info >> 8;
	sd->flags = id->driver_info;

	cam = &gspca_dev->cam;
	if (sd->sensor == SENSOR_ADCM1700) {
		cam->cam_mode = cif_mode;
		cam->nmodes = FUNC0(cif_mode);
	} else {
		cam->cam_mode = vga_mode;
		cam->nmodes = FUNC0(vga_mode);
	}
	cam->npkt = 24;			/* 24 packets per ISOC message */

	sd->ag_cnt = -1;
	sd->quality = QUALITY_DEF;

	FUNC1(&sd->work, qual_upd);

	return 0;
}