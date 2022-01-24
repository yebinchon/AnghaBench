#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mfd_cell {int version; int outsize; int insize; char* name; int sensor_num; int id; int pdata_size; struct mfd_cell* platform_data; int /*<<< orphan*/  result; scalar_t__ data; scalar_t__ command; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_4__ {int sensor_count; } ;
struct ec_response_motion_sense {TYPE_3__ info; TYPE_1__ dump; } ;
struct TYPE_5__ {int sensor_num; } ;
struct ec_params_motion_sense {TYPE_2__ info; int /*<<< orphan*/  cmd; } ;
struct cros_ec_sensor_platform {int version; int outsize; int insize; char* name; int sensor_num; int id; int pdata_size; struct cros_ec_sensor_platform* platform_data; int /*<<< orphan*/  result; scalar_t__ data; scalar_t__ command; } ;
struct cros_ec_dev {int has_kb_wake_angle; int /*<<< orphan*/  dev; int /*<<< orphan*/  ec_dev; scalar_t__ cmd_offset; } ;
struct cros_ec_command {int version; int outsize; int insize; char* name; int sensor_num; int id; int pdata_size; struct cros_ec_command* platform_data; int /*<<< orphan*/  result; scalar_t__ data; scalar_t__ command; } ;
typedef  int /*<<< orphan*/  sensor_type ;

/* Variables and functions */
 scalar_t__ EC_CMD_MOTION_SENSE_CMD ; 
 int /*<<< orphan*/  EC_FEATURE_MOTION_SENSE_FIFO ; 
 int /*<<< orphan*/  EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MOTIONSENSE_CMD_DUMP ; 
 int /*<<< orphan*/  MOTIONSENSE_CMD_INFO ; 
#define  MOTIONSENSE_TYPE_ACCEL 134 
#define  MOTIONSENSE_TYPE_ACTIVITY 133 
#define  MOTIONSENSE_TYPE_BARO 132 
#define  MOTIONSENSE_TYPE_GYRO 131 
#define  MOTIONSENSE_TYPE_LIGHT 130 
#define  MOTIONSENSE_TYPE_MAG 129 
 int MOTIONSENSE_TYPE_MAX ; 
#define  MOTIONSENSE_TYPE_PROX 128 
 scalar_t__ FUNC0 (struct cros_ec_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mfd_cell*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct mfd_cell* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mfd_cell*) ; 
 struct mfd_cell* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mfd_cell*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct cros_ec_dev *ec)
{
	/*
	 * Issue a command to get the number of sensor reported.
	 * Build an array of sensors driver and register them all.
	 */
	int ret, i, id, sensor_num;
	struct mfd_cell *sensor_cells;
	struct cros_ec_sensor_platform *sensor_platforms;
	int sensor_type[MOTIONSENSE_TYPE_MAX];
	struct ec_params_motion_sense *params;
	struct ec_response_motion_sense *resp;
	struct cros_ec_command *msg;

	msg = FUNC6(sizeof(struct cros_ec_command) +
		      FUNC7(sizeof(*params), sizeof(*resp)), GFP_KERNEL);
	if (msg == NULL)
		return;

	msg->version = 2;
	msg->command = EC_CMD_MOTION_SENSE_CMD + ec->cmd_offset;
	msg->outsize = sizeof(*params);
	msg->insize = sizeof(*resp);

	params = (struct ec_params_motion_sense *)msg->data;
	params->cmd = MOTIONSENSE_CMD_DUMP;

	ret = FUNC1(ec->ec_dev, msg);
	if (ret < 0) {
		FUNC3(ec->dev, "cannot get EC sensor information: %d/%d\n",
			 ret, msg->result);
		goto error;
	}

	resp = (struct ec_response_motion_sense *)msg->data;
	sensor_num = resp->dump.sensor_count;
	/*
	 * Allocate 2 extra sensors if lid angle sensor and/or FIFO are needed.
	 */
	sensor_cells = FUNC4(sensor_num + 2, sizeof(struct mfd_cell),
			       GFP_KERNEL);
	if (sensor_cells == NULL)
		goto error;

	sensor_platforms = FUNC4(sensor_num,
				   sizeof(struct cros_ec_sensor_platform),
				   GFP_KERNEL);
	if (sensor_platforms == NULL)
		goto error_platforms;

	FUNC8(sensor_type, 0, sizeof(sensor_type));
	id = 0;
	for (i = 0; i < sensor_num; i++) {
		params->cmd = MOTIONSENSE_CMD_INFO;
		params->info.sensor_num = i;
		ret = FUNC1(ec->ec_dev, msg);
		if (ret < 0) {
			FUNC3(ec->dev, "no info for EC sensor %d : %d/%d\n",
				 i, ret, msg->result);
			continue;
		}
		switch (resp->info.type) {
		case MOTIONSENSE_TYPE_ACCEL:
			sensor_cells[id].name = "cros-ec-accel";
			break;
		case MOTIONSENSE_TYPE_BARO:
			sensor_cells[id].name = "cros-ec-baro";
			break;
		case MOTIONSENSE_TYPE_GYRO:
			sensor_cells[id].name = "cros-ec-gyro";
			break;
		case MOTIONSENSE_TYPE_MAG:
			sensor_cells[id].name = "cros-ec-mag";
			break;
		case MOTIONSENSE_TYPE_PROX:
			sensor_cells[id].name = "cros-ec-prox";
			break;
		case MOTIONSENSE_TYPE_LIGHT:
			sensor_cells[id].name = "cros-ec-light";
			break;
		case MOTIONSENSE_TYPE_ACTIVITY:
			sensor_cells[id].name = "cros-ec-activity";
			break;
		default:
			FUNC3(ec->dev, "unknown type %d\n", resp->info.type);
			continue;
		}
		sensor_platforms[id].sensor_num = i;
		sensor_cells[id].id = sensor_type[resp->info.type];
		sensor_cells[id].platform_data = &sensor_platforms[id];
		sensor_cells[id].pdata_size =
			sizeof(struct cros_ec_sensor_platform);

		sensor_type[resp->info.type]++;
		id++;
	}

	if (sensor_type[MOTIONSENSE_TYPE_ACCEL] >= 2)
		ec->has_kb_wake_angle = true;

	if (FUNC0(ec, EC_FEATURE_MOTION_SENSE_FIFO)) {
		sensor_cells[id].name = "cros-ec-ring";
		id++;
	}
	if (FUNC0(ec,
				EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS)) {
		sensor_cells[id].name = "cros-ec-lid-angle";
		id++;
	}

	ret = FUNC9(ec->dev, 0, sensor_cells, id,
			      NULL, 0, NULL);
	if (ret)
		FUNC2(ec->dev, "failed to add EC sensors\n");

	FUNC5(sensor_platforms);
error_platforms:
	FUNC5(sensor_cells);
error:
	FUNC5(msg);
}