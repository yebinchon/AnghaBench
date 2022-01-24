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
struct TYPE_2__ {scalar_t__ bus_type; } ;
struct ov5640_dev {TYPE_1__ ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5640_REG_IO_MIPI_CTRL00 ; 
 int /*<<< orphan*/  OV5640_REG_MIPI_CTRL00 ; 
 int /*<<< orphan*/  OV5640_REG_PAD_OUTPUT00 ; 
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int FUNC0 (struct ov5640_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct ov5640_dev*) ; 
 int FUNC2 (struct ov5640_dev*) ; 
 int FUNC3 (struct ov5640_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct ov5640_dev *sensor, bool on)
{
	int ret = 0;

	if (on) {
		ret = FUNC2(sensor);
		if (ret)
			return ret;

		ret = FUNC0(sensor);
		if (ret)
			goto power_off;

		/* We're done here for DVP bus, while CSI-2 needs setup. */
		if (sensor->ep.bus_type != V4L2_MBUS_CSI2_DPHY)
			return 0;

		/*
		 * Power up MIPI HS Tx and LS Rx; 2 data lanes mode
		 *
		 * 0x300e = 0x40
		 * [7:5] = 010	: 2 data lanes mode (see FIXME note in
		 *		  "ov5640_set_stream_mipi()")
		 * [4] = 0	: Power up MIPI HS Tx
		 * [3] = 0	: Power up MIPI LS Rx
		 * [2] = 0	: MIPI interface disabled
		 */
		ret = FUNC3(sensor,
				       OV5640_REG_IO_MIPI_CTRL00, 0x40);
		if (ret)
			goto power_off;

		/*
		 * Gate clock and set LP11 in 'no packets mode' (idle)
		 *
		 * 0x4800 = 0x24
		 * [5] = 1	: Gate clock when 'no packets'
		 * [2] = 1	: MIPI bus in LP11 when 'no packets'
		 */
		ret = FUNC3(sensor,
				       OV5640_REG_MIPI_CTRL00, 0x24);
		if (ret)
			goto power_off;

		/*
		 * Set data lanes and clock in LP11 when 'sleeping'
		 *
		 * 0x3019 = 0x70
		 * [6] = 1	: MIPI data lane 2 in LP11 when 'sleeping'
		 * [5] = 1	: MIPI data lane 1 in LP11 when 'sleeping'
		 * [4] = 1	: MIPI clock lane in LP11 when 'sleeping'
		 */
		ret = FUNC3(sensor,
				       OV5640_REG_PAD_OUTPUT00, 0x70);
		if (ret)
			goto power_off;

		/* Give lanes some time to coax into LP11 state. */
		FUNC4(500, 1000);

	} else {
		if (sensor->ep.bus_type == V4L2_MBUS_CSI2_DPHY) {
			/* Reset MIPI bus settings to their default values. */
			FUNC3(sensor,
					 OV5640_REG_IO_MIPI_CTRL00, 0x58);
			FUNC3(sensor,
					 OV5640_REG_MIPI_CTRL00, 0x04);
			FUNC3(sensor,
					 OV5640_REG_PAD_OUTPUT00, 0x00);
		}

		FUNC1(sensor);
	}

	return 0;

power_off:
	FUNC1(sensor);
	return ret;
}