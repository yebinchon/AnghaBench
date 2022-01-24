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
 int /*<<< orphan*/  MT9M111_SC_GREEN_1_GAIN ; 
 int /*<<< orphan*/  MT9M111_SC_GREEN_2_GAIN ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev, __s32 val)
{
	int err;
	u8 data[2];
	struct sd *sd = (struct sd *) gspca_dev;

	data[1] = (val & 0xff);
	data[0] = (val & 0xff00) >> 8;

	FUNC0(gspca_dev, D_CONF, "Set green balance %d\n", val);
	err = FUNC1(sd, MT9M111_SC_GREEN_1_GAIN,
				 data, 2);
	if (err < 0)
		return err;

	return FUNC1(sd, MT9M111_SC_GREEN_2_GAIN,
				  data, 2);
}