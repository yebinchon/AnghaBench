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
typedef  int u32 ;
struct v4l2_subdev {int grp_id; } ;
struct i2c_adapter {int dummy; } ;
struct ivtv {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  pvr150_workaround; TYPE_1__* card_i2c; struct i2c_adapter i2c_adap; } ;
struct i2c_board_info {char* type; struct cx25840_platform_data* platform_data; int /*<<< orphan*/  addr; } ;
struct cx25840_platform_data {int /*<<< orphan*/  pvr150_workaround; } ;
typedef  int /*<<< orphan*/  pdata ;
struct TYPE_2__ {int /*<<< orphan*/ * tv; int /*<<< orphan*/ * demod; int /*<<< orphan*/ * radio; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int IVTV_HW_CX25840 ; 
 int IVTV_HW_IR_ANY ; 
 int IVTV_HW_TUNER ; 
 int IVTV_HW_UPD64031A ; 
 int IVTV_HW_UPD6408X ; 
 int /*<<< orphan*/ * hw_addrs ; 
 char** hw_devicenames ; 
 int FUNC1 (struct ivtv*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx25840_platform_data*,int /*<<< orphan*/ ,int) ; 
 struct v4l2_subdev* FUNC3 (int /*<<< orphan*/ *,struct i2c_adapter*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC4 (int /*<<< orphan*/ *,struct i2c_adapter*,struct i2c_board_info*,int /*<<< orphan*/ *) ; 

int FUNC5(struct ivtv *itv, unsigned idx)
{
	struct v4l2_subdev *sd;
	struct i2c_adapter *adap = &itv->i2c_adap;
	const char *type = hw_devicenames[idx];
	u32 hw = 1 << idx;

	if (hw == IVTV_HW_TUNER) {
		/* special tuner handling */
		sd = FUNC3(&itv->v4l2_dev, adap, type, 0,
				itv->card_i2c->radio);
		if (sd)
			sd->grp_id = 1 << idx;
		sd = FUNC3(&itv->v4l2_dev, adap, type, 0,
				itv->card_i2c->demod);
		if (sd)
			sd->grp_id = 1 << idx;
		sd = FUNC3(&itv->v4l2_dev, adap, type, 0,
				itv->card_i2c->tv);
		if (sd)
			sd->grp_id = 1 << idx;
		return sd ? 0 : -1;
	}

	if (hw & IVTV_HW_IR_ANY)
		return FUNC1(itv, hw, type, hw_addrs[idx]);

	/* Is it not an I2C device or one we do not wish to register? */
	if (!hw_addrs[idx])
		return -1;

	/* It's an I2C device other than an analog tuner or IR chip */
	if (hw == IVTV_HW_UPD64031A || hw == IVTV_HW_UPD6408X) {
		sd = FUNC3(&itv->v4l2_dev,
				adap, type, 0, FUNC0(hw_addrs[idx]));
	} else if (hw == IVTV_HW_CX25840) {
		struct cx25840_platform_data pdata;
		struct i2c_board_info cx25840_info = {
			.type = "cx25840",
			.addr = hw_addrs[idx],
			.platform_data = &pdata,
		};

		FUNC2(&pdata, 0, sizeof(pdata));
		pdata.pvr150_workaround = itv->pvr150_workaround;
		sd = FUNC4(&itv->v4l2_dev, adap,
				&cx25840_info, NULL);
	} else {
		sd = FUNC3(&itv->v4l2_dev,
				adap, type, hw_addrs[idx], NULL);
	}
	if (sd)
		sd->grp_id = 1 << idx;
	return sd ? 0 : -1;
}