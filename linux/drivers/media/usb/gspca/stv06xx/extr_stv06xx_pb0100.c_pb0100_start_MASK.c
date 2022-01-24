#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_interface {int dummy; } ;
struct usb_host_interface {TYPE_3__* endpoint; } ;
struct cam {TYPE_1__* cam_mode; } ;
struct TYPE_10__ {size_t curr_mode; int /*<<< orphan*/  alt; int /*<<< orphan*/  iface; int /*<<< orphan*/  dev; struct cam cam; } ;
struct sd {TYPE_5__ gspca_dev; TYPE_4__* sensor; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_9__ {int* max_packet_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_8__ {TYPE_2__ desc; } ;
struct TYPE_6__ {int priv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  D_STREAM ; 
 int ENODEV ; 
 int PB0100_CROP_TO_VGA ; 
 int PB0100_SUBSAMPLE ; 
 int /*<<< orphan*/  PB_CONTROL ; 
 int /*<<< orphan*/  PB_CSTART ; 
 int /*<<< orphan*/  PB_CWSIZE ; 
 int /*<<< orphan*/  PB_ROWSPEED ; 
 int /*<<< orphan*/  PB_RSTART ; 
 int /*<<< orphan*/  PB_RWSIZE ; 
 int /*<<< orphan*/  STV_SCAN_RATE ; 
 int /*<<< orphan*/  STV_X_CTRL ; 
 int /*<<< orphan*/  STV_Y_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct sd*,int /*<<< orphan*/ ,int) ; 
 struct usb_host_interface* FUNC5 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sd *sd)
{
	int err, packet_size, max_packet_size;
	struct usb_host_interface *alt;
	struct usb_interface *intf;
	struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
	struct cam *cam = &sd->gspca_dev.cam;
	u32 mode = cam->cam_mode[sd->gspca_dev.curr_mode].priv;

	intf = FUNC6(sd->gspca_dev.dev, sd->gspca_dev.iface);
	alt = FUNC5(intf, sd->gspca_dev.alt);
	if (!alt)
		return -ENODEV;
	packet_size = FUNC2(alt->endpoint[0].desc.wMaxPacketSize);

	/* If we don't have enough bandwidth use a lower framerate */
	max_packet_size = sd->sensor->max_packet_size[sd->gspca_dev.curr_mode];
	if (packet_size < max_packet_size)
		FUNC4(sd, PB_ROWSPEED, FUNC0(4)|FUNC0(3)|FUNC0(1));
	else
		FUNC4(sd, PB_ROWSPEED, FUNC0(5)|FUNC0(3)|FUNC0(1));

	/* Setup sensor window */
	if (mode & PB0100_CROP_TO_VGA) {
		FUNC4(sd, PB_RSTART, 30);
		FUNC4(sd, PB_CSTART, 20);
		FUNC4(sd, PB_RWSIZE, 240 - 1);
		FUNC4(sd, PB_CWSIZE, 320 - 1);
	} else {
		FUNC4(sd, PB_RSTART, 8);
		FUNC4(sd, PB_CSTART, 4);
		FUNC4(sd, PB_RWSIZE, 288 - 1);
		FUNC4(sd, PB_CWSIZE, 352 - 1);
	}

	if (mode & PB0100_SUBSAMPLE) {
		FUNC3(sd, STV_Y_CTRL, 0x02); /* Wrong, FIXME */
		FUNC3(sd, STV_X_CTRL, 0x06);

		FUNC3(sd, STV_SCAN_RATE, 0x10);
	} else {
		FUNC3(sd, STV_Y_CTRL, 0x01);
		FUNC3(sd, STV_X_CTRL, 0x0a);
		/* larger -> slower */
		FUNC3(sd, STV_SCAN_RATE, 0x20);
	}

	err = FUNC4(sd, PB_CONTROL, FUNC0(5)|FUNC0(3)|FUNC0(1));
	FUNC1(gspca_dev, D_STREAM, "Started stream, status: %d\n", err);

	return (err < 0) ? err : 0;
}