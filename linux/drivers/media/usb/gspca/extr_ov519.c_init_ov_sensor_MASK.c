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
typedef  int /*<<< orphan*/  u8 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int OV7610_REG_ID_HIGH ; 
 int OV7610_REG_ID_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int i2c_detect_tries ; 
 scalar_t__ FUNC1 (struct sd*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sd *sd, u8 slave)
{
	int i;
	struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;

	FUNC4(sd, slave);

	/* Reset the sensor */
	FUNC2(sd, 0x12, 0x80);

	/* Wait for it to initialize */
	FUNC3(150);

	for (i = 0; i < i2c_detect_tries; i++) {
		if (FUNC1(sd, OV7610_REG_ID_HIGH) == 0x7f &&
		    FUNC1(sd, OV7610_REG_ID_LOW) == 0xa2) {
			FUNC0(gspca_dev, D_PROBE, "I2C synced in %d attempt(s)\n",
				  i);
			return 0;
		}

		/* Reset the sensor */
		FUNC2(sd, 0x12, 0x80);

		/* Wait for it to initialize */
		FUNC3(150);

		/* Dummy read to sync I2C */
		if (FUNC1(sd, 0x00) < 0)
			return -1;
	}
	return -1;
}