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
struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_data {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct saa7127_state {scalar_t__ ident; struct v4l2_subdev sd; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 scalar_t__ SAA7127 ; 
 int /*<<< orphan*/  SAA7127_INPUT_TYPE_NORMAL ; 
 int /*<<< orphan*/  SAA7127_INPUT_TYPE_TEST_IMAGE ; 
 int /*<<< orphan*/  SAA7127_OUTPUT_TYPE_BOTH ; 
 scalar_t__ SAA7129 ; 
 int SAA7129_REG_FADE_KEY_COL2 ; 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int /*<<< orphan*/  debug ; 
 struct saa7127_state* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  saa7127_init_config_common ; 
 int /*<<< orphan*/  saa7127_ops ; 
 int FUNC2 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,struct v4l2_sliced_vbi_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,struct v4l2_sliced_vbi_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,struct v4l2_sliced_vbi_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,struct v4l2_sliced_vbi_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  saa7129_init_config_extra ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int test_image ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct saa7127_state *state;
	struct v4l2_subdev *sd;
	struct v4l2_sliced_vbi_data vbi = { 0, 0, 0, 0 };  /* set to disabled */

	/* Check if the adapter supports the needed features */
	if (!FUNC1(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	FUNC17(1, debug, client, "detecting saa7127 client on address 0x%x\n",
			client->addr << 1);

	state = FUNC0(&client->dev, sizeof(*state), GFP_KERNEL);
	if (state == NULL)
		return -ENOMEM;

	sd = &state->sd;
	FUNC15(sd, client, &saa7127_ops);

	/* First test register 0: Bits 5-7 are a version ID (should be 0),
	   and bit 2 should also be 0.
	   This is rather general, so the second test is more specific and
	   looks at the 'ending point of burst in clock cycles' which is
	   0x1d after a reset and not expected to ever change. */
	if ((FUNC2(sd, 0) & 0xe4) != 0 ||
			(FUNC2(sd, 0x29) & 0x3f) != 0x1d) {
		FUNC14(1, debug, sd, "saa7127 not found\n");
		return -ENODEV;
	}

	if (id->driver_data) {	/* Chip type is already known */
		state->ident = id->driver_data;
	} else {		/* Needs detection */
		int read_result;

		/* Detect if it's an saa7129 */
		read_result = FUNC2(sd, SAA7129_REG_FADE_KEY_COL2);
		FUNC11(sd, SAA7129_REG_FADE_KEY_COL2, 0xaa);
		if (FUNC2(sd, SAA7129_REG_FADE_KEY_COL2) == 0xaa) {
			FUNC11(sd, SAA7129_REG_FADE_KEY_COL2,
					read_result);
			state->ident = SAA7129;
			FUNC13(client->name, "saa7129", I2C_NAME_SIZE);
		} else {
			state->ident = SAA7127;
			FUNC13(client->name, "saa7127", I2C_NAME_SIZE);
		}
	}

	FUNC16(sd, "%s found @ 0x%x (%s)\n", client->name,
			client->addr << 1, client->adapter->name);

	FUNC14(1, debug, sd, "Configuring encoder\n");
	FUNC12(sd, saa7127_init_config_common);
	FUNC6(sd, V4L2_STD_NTSC);
	FUNC5(sd, SAA7127_OUTPUT_TYPE_BOTH);
	FUNC8(sd, &vbi);
	FUNC9(sd, &vbi);
	FUNC3(sd, &vbi);
	FUNC10(sd, &vbi);
	if (test_image == 1)
		/* The Encoder has an internal Colorbar generator */
		/* This can be used for debugging */
		FUNC4(sd, SAA7127_INPUT_TYPE_TEST_IMAGE);
	else
		FUNC4(sd, SAA7127_INPUT_TYPE_NORMAL);
	FUNC7(sd, 1);

	if (state->ident == SAA7129)
		FUNC12(sd, saa7129_init_config_extra);
	return 0;
}