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
typedef  scalar_t__ u8 ;
struct v4l2_subdev {int dummy; } ;
struct tvp514x_decoder {scalar_t__ ver; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  REG_CHIP_ID_LSB ; 
 int /*<<< orphan*/  REG_CHIP_ID_MSB ; 
 int /*<<< orphan*/  REG_ROM_VERSION ; 
 scalar_t__ TVP5146_CHIP_ID_LSB ; 
 scalar_t__ TVP5147_CHIP_ID_LSB ; 
 scalar_t__ TVP514X_CHIP_ID_MSB ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
		struct tvp514x_decoder *decoder)
{
	u8 chip_id_msb, chip_id_lsb, rom_ver;
	struct i2c_client *client = FUNC3(sd);

	chip_id_msb = FUNC0(sd, REG_CHIP_ID_MSB);
	chip_id_lsb = FUNC0(sd, REG_CHIP_ID_LSB);
	rom_ver = FUNC0(sd, REG_ROM_VERSION);

	FUNC1(1, debug, sd,
		 "chip id detected msb:0x%x lsb:0x%x rom version:0x%x\n",
		 chip_id_msb, chip_id_lsb, rom_ver);
	if ((chip_id_msb != TVP514X_CHIP_ID_MSB)
		|| ((chip_id_lsb != TVP5146_CHIP_ID_LSB)
		&& (chip_id_lsb != TVP5147_CHIP_ID_LSB))) {
		/* We didn't read the values we expected, so this must not be
		 * an TVP5146/47.
		 */
		FUNC2(sd, "chip id mismatch msb:0x%x lsb:0x%x\n",
				chip_id_msb, chip_id_lsb);
		return -ENODEV;
	}

	decoder->ver = rom_ver;

	FUNC4(sd, "%s (Version - 0x%.2x) found at 0x%x (%s)\n",
			client->name, decoder->ver,
			client->addr << 1, client->adapter->name);
	return 0;
}