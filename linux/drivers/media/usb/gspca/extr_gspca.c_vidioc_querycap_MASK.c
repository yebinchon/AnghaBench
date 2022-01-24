#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_capability {scalar_t__ bus_info; scalar_t__ card; scalar_t__ driver; } ;
struct gspca_dev {TYPE_3__* dev; TYPE_1__* sd_desc; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_6__ {TYPE_2__ descriptor; int /*<<< orphan*/ * product; } ;
struct TYPE_4__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 struct gspca_dev* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void  *priv,
			   struct v4l2_capability *cap)
{
	struct gspca_dev *gspca_dev = FUNC4(file);

	FUNC2((char *)cap->driver, gspca_dev->sd_desc->name,
		sizeof(cap->driver));
	if (gspca_dev->dev->product != NULL) {
		FUNC2((char *)cap->card, gspca_dev->dev->product,
			sizeof(cap->card));
	} else {
		FUNC1((char *) cap->card, sizeof cap->card,
			"USB Camera (%04x:%04x)",
			FUNC0(gspca_dev->dev->descriptor.idVendor),
			FUNC0(gspca_dev->dev->descriptor.idProduct));
	}
	FUNC3(gspca_dev->dev, (char *) cap->bus_info,
			sizeof(cap->bus_info));
	return 0;
}