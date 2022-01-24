#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  nmodes; int /*<<< orphan*/  cam_mode; } ;
struct TYPE_4__ {TYPE_1__ cam; } ;
struct sd {TYPE_2__ gspca_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  VV6410_DEVICEH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  vv6410_mode ; 

__attribute__((used)) static int FUNC3(struct sd *sd)
{
	u16 data;
	int err;

	err = FUNC2(sd, VV6410_DEVICEH, &data);
	if (err < 0)
		return -ENODEV;

	if (data != 0x19)
		return -ENODEV;

	FUNC1("vv6410 sensor detected\n");

	sd->gspca_dev.cam.cam_mode = vv6410_mode;
	sd->gspca_dev.cam.nmodes = FUNC0(vv6410_mode);
	return 0;
}