#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  struct ov5640_mode_info {int dn_mode; int vtot; int htot; } const ov5640_mode_info ;
struct TYPE_12__ {unsigned long bus_width; } ;
struct TYPE_11__ {unsigned long num_data_lanes; } ;
struct TYPE_13__ {TYPE_5__ parallel; TYPE_4__ mipi_csi2; } ;
struct TYPE_14__ {scalar_t__ bus_type; TYPE_6__ bus; } ;
struct TYPE_10__ {TYPE_2__* auto_exp; TYPE_1__* auto_gain; } ;
struct ov5640_dev {size_t current_fr; int pending_mode_change; struct ov5640_mode_info const* last_mode; int /*<<< orphan*/  ae_target; TYPE_7__ ep; TYPE_3__ ctrls; struct ov5640_mode_info const* current_mode; } ;
typedef  enum ov5640_downsize_mode { ____Placeholder_ov5640_downsize_mode } ov5640_downsize_mode ;
struct TYPE_9__ {scalar_t__ val; } ;
struct TYPE_8__ {int val; } ;

/* Variables and functions */
 int SCALING ; 
 int SUBSAMPLING ; 
 scalar_t__ V4L2_EXPOSURE_AUTO ; 
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 unsigned long* ov5640_framerates ; 
 int FUNC0 (struct ov5640_dev*) ; 
 int FUNC1 (struct ov5640_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ov5640_dev*,int) ; 
 int FUNC3 (struct ov5640_dev*,int) ; 
 int FUNC4 (struct ov5640_dev*) ; 
 int FUNC5 (struct ov5640_dev*,int) ; 
 int FUNC6 (struct ov5640_dev*,unsigned long) ; 
 int FUNC7 (struct ov5640_dev*,unsigned long) ; 
 int FUNC8 (struct ov5640_dev*,struct ov5640_mode_info const*) ; 
 int FUNC9 (struct ov5640_dev*,struct ov5640_mode_info const*) ; 
 int FUNC10 (struct ov5640_dev*) ; 

__attribute__((used)) static int FUNC11(struct ov5640_dev *sensor)
{
	const struct ov5640_mode_info *mode = sensor->current_mode;
	const struct ov5640_mode_info *orig_mode = sensor->last_mode;
	enum ov5640_downsize_mode dn_mode, orig_dn_mode;
	bool auto_gain = sensor->ctrls.auto_gain->val == 1;
	bool auto_exp =  sensor->ctrls.auto_exp->val == V4L2_EXPOSURE_AUTO;
	unsigned long rate;
	int ret;

	dn_mode = mode->dn_mode;
	orig_dn_mode = orig_mode->dn_mode;

	/* auto gain and exposure must be turned off when changing modes */
	if (auto_gain) {
		ret = FUNC3(sensor, false);
		if (ret)
			return ret;
	}

	if (auto_exp) {
		ret = FUNC2(sensor, false);
		if (ret)
			goto restore_auto_gain;
	}

	/*
	 * All the formats we support have 16 bits per pixel, seems to require
	 * the same rate than YUV, so we can just use 16 bpp all the time.
	 */
	rate = mode->vtot * mode->htot * 16;
	rate *= ov5640_framerates[sensor->current_fr];
	if (sensor->ep.bus_type == V4L2_MBUS_CSI2_DPHY) {
		rate = rate / sensor->ep.bus.mipi_csi2.num_data_lanes;
		ret = FUNC7(sensor, rate);
	} else {
		rate = rate / sensor->ep.bus.parallel.bus_width;
		ret = FUNC6(sensor, rate);
	}

	if (ret < 0)
		return 0;

	if ((dn_mode == SUBSAMPLING && orig_dn_mode == SCALING) ||
	    (dn_mode == SCALING && orig_dn_mode == SUBSAMPLING)) {
		/*
		 * change between subsampling and scaling
		 * go through exposure calculation
		 */
		ret = FUNC9(sensor, mode);
	} else {
		/*
		 * change inside subsampling or scaling
		 * download firmware directly
		 */
		ret = FUNC8(sensor, mode);
	}
	if (ret < 0)
		goto restore_auto_exp_gain;

	/* restore auto gain and exposure */
	if (auto_gain)
		FUNC3(sensor, true);
	if (auto_exp)
		FUNC2(sensor, true);

	ret = FUNC5(sensor, dn_mode != SCALING);
	if (ret < 0)
		return ret;
	ret = FUNC1(sensor, sensor->ae_target);
	if (ret < 0)
		return ret;
	ret = FUNC0(sensor);
	if (ret < 0)
		return ret;
	ret = FUNC4(sensor);
	if (ret < 0)
		return ret;
	ret = FUNC10(sensor);
	if (ret < 0)
		return ret;

	sensor->pending_mode_change = false;
	sensor->last_mode = mode;

	return 0;

restore_auto_exp_gain:
	if (auto_exp)
		FUNC2(sensor, true);
restore_auto_gain:
	if (auto_gain)
		FUNC3(sensor, true);

	return ret;
}