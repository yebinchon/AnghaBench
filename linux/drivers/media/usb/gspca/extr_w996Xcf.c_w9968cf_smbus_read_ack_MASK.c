#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  usb_err; } ;
struct sd {TYPE_1__ gspca_dev; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBI ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct sd*) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int) ; 

__attribute__((used)) static void FUNC3(struct sd *sd)
{
	struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
	int sda;

	/* Ensure SDA is high before raising clock to avoid a spurious stop */
	FUNC2(sd, 0x0012); /* SDE=1, SDA=1, SCL=0 */
	FUNC2(sd, 0x0013); /* SDE=1, SDA=1, SCL=1 */
	sda = FUNC1(sd);
	FUNC2(sd, 0x0012); /* SDE=1, SDA=1, SCL=0 */
	if (sda >= 0 && (sda & 0x08)) {
		FUNC0(gspca_dev, D_USBI, "Did not receive i2c ACK\n");
		sd->gspca_dev.usb_err = -EIO;
	}
}