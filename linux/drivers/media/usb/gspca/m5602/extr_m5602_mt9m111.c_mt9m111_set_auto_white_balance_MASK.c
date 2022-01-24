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
typedef  int u8 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef  int __s32 ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONF ; 
 int /*<<< orphan*/  MT9M111_CP_OPERATING_MODE_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev,
					  __s32 val)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int err;
	u8 data[2];

	err = FUNC1(sd, MT9M111_CP_OPERATING_MODE_CTL, data, 2);
	if (err < 0)
		return err;

	data[1] = ((data[1] & 0xfd) | ((val & 0x01) << 1));

	err = FUNC2(sd, MT9M111_CP_OPERATING_MODE_CTL, data, 2);

	FUNC0(gspca_dev, D_CONF, "Set auto white balance %d\n", val);
	return err;
}