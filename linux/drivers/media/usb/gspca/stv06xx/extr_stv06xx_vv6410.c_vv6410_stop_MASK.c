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
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  STV_LED_CTRL ; 
 int /*<<< orphan*/  VV6410_LOW_POWER_MODE ; 
 int /*<<< orphan*/  VV6410_SETUP0 ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sd *sd)
{
	struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
	int err;

	/* Turn off LED */
	err = FUNC1(sd, STV_LED_CTRL, LED_OFF);
	if (err < 0)
		return err;

	err = FUNC2(sd, VV6410_SETUP0, VV6410_LOW_POWER_MODE);
	if (err < 0)
		return err;

	FUNC0(gspca_dev, D_STREAM, "Halting stream\n");

	return 0;
}