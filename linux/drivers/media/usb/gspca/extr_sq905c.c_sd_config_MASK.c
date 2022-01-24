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
struct usb_device_id {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct sd {int /*<<< orphan*/  work_struct; } ;
struct cam {int nmodes; int bulk_size; int bulk; int /*<<< orphan*/  cam_mode; } ;
struct gspca_dev {scalar_t__* usb_buf; struct cam cam; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SQ905C_GET_ID ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,char*,scalar_t__,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,char*) ; 
 int FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sq905c_dostream ; 
 int /*<<< orphan*/  sq905c_mode ; 
 int FUNC4 (struct gspca_dev*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev,
		const struct usb_device_id *id)
{
	struct cam *cam = &gspca_dev->cam;
	struct sd *dev = (struct sd *) gspca_dev;
	int ret;

	FUNC1(gspca_dev, D_PROBE,
		  "SQ9050 camera detected (vid/pid 0x%04X:0x%04X)\n",
		  id->idVendor, id->idProduct);

	ret = FUNC3(gspca_dev, SQ905C_GET_ID, 0);
	if (ret < 0) {
		FUNC2(gspca_dev, "Get version command failed\n");
		return ret;
	}

	ret = FUNC4(gspca_dev, 0xf5, 0, 20);
	if (ret < 0) {
		FUNC2(gspca_dev, "Reading version command failed\n");
		return ret;
	}
	/* Note we leave out the usb id and the manufacturing date */
	FUNC1(gspca_dev, D_PROBE,
		  "SQ9050 ID string: %02x - %*ph\n",
		  gspca_dev->usb_buf[3], 6, gspca_dev->usb_buf + 14);

	cam->cam_mode = sq905c_mode;
	cam->nmodes = 2;
	if (gspca_dev->usb_buf[15] == 0)
		cam->nmodes = 1;
	/* We don't use the buffer gspca allocates so make it small. */
	cam->bulk_size = 32;
	cam->bulk = 1;
	FUNC0(&dev->work_struct, sq905c_dostream);
	return 0;
}