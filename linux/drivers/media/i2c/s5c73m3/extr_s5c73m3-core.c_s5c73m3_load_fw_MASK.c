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
struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {char* fw_file_version; int isp_ready; struct i2c_client* i2c_client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  fw_name ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct firmware const*) ; 
 int FUNC1 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct s5c73m3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct s5c73m3* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd)
{
	struct s5c73m3 *state = FUNC3(sd);
	struct i2c_client *client = state->i2c_client;
	const struct firmware *fw;
	int ret;
	char fw_name[20];

	FUNC4(fw_name, sizeof(fw_name), "SlimISP_%.2s.bin",
							state->fw_file_version);
	ret = FUNC1(&fw, fw_name, &client->dev);
	if (ret < 0) {
		FUNC5(sd, "Firmware request failed (%s)\n", fw_name);
		return -EINVAL;
	}

	FUNC6(sd, "Loading firmware (%s, %zu B)\n", fw_name, fw->size);

	ret = FUNC2(state, fw->data, fw->size, 64);

	if (ret >= 0)
		state->isp_ready = 1;
	else
		FUNC5(sd, "SPI write failed\n");

	FUNC0(fw);

	return ret;
}