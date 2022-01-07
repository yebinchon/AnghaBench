
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mfd_cell {int version; int outsize; int insize; char* name; int sensor_num; int id; int pdata_size; struct mfd_cell* platform_data; int result; scalar_t__ data; scalar_t__ command; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_4__ {int sensor_count; } ;
struct ec_response_motion_sense {TYPE_3__ info; TYPE_1__ dump; } ;
struct TYPE_5__ {int sensor_num; } ;
struct ec_params_motion_sense {TYPE_2__ info; int cmd; } ;
struct cros_ec_sensor_platform {int version; int outsize; int insize; char* name; int sensor_num; int id; int pdata_size; struct cros_ec_sensor_platform* platform_data; int result; scalar_t__ data; scalar_t__ command; } ;
struct cros_ec_dev {int has_kb_wake_angle; int dev; int ec_dev; scalar_t__ cmd_offset; } ;
struct cros_ec_command {int version; int outsize; int insize; char* name; int sensor_num; int id; int pdata_size; struct cros_ec_command* platform_data; int result; scalar_t__ data; scalar_t__ command; } ;
typedef int sensor_type ;


 scalar_t__ EC_CMD_MOTION_SENSE_CMD ;
 int EC_FEATURE_MOTION_SENSE_FIFO ;
 int EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS ;
 int GFP_KERNEL ;
 int MOTIONSENSE_CMD_DUMP ;
 int MOTIONSENSE_CMD_INFO ;






 int MOTIONSENSE_TYPE_MAX ;

 scalar_t__ cros_ec_check_features (struct cros_ec_dev*,int ) ;
 int cros_ec_cmd_xfer_status (int ,struct mfd_cell*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int,...) ;
 struct mfd_cell* kcalloc (int,int,int ) ;
 int kfree (struct mfd_cell*) ;
 struct mfd_cell* kzalloc (scalar_t__,int ) ;
 scalar_t__ max (int,int) ;
 int memset (int*,int ,int) ;
 int mfd_add_devices (int ,int ,struct mfd_cell*,int,int *,int ,int *) ;

__attribute__((used)) static void cros_ec_sensors_register(struct cros_ec_dev *ec)
{




 int ret, i, id, sensor_num;
 struct mfd_cell *sensor_cells;
 struct cros_ec_sensor_platform *sensor_platforms;
 int sensor_type[MOTIONSENSE_TYPE_MAX];
 struct ec_params_motion_sense *params;
 struct ec_response_motion_sense *resp;
 struct cros_ec_command *msg;

 msg = kzalloc(sizeof(struct cros_ec_command) +
        max(sizeof(*params), sizeof(*resp)), GFP_KERNEL);
 if (msg == ((void*)0))
  return;

 msg->version = 2;
 msg->command = EC_CMD_MOTION_SENSE_CMD + ec->cmd_offset;
 msg->outsize = sizeof(*params);
 msg->insize = sizeof(*resp);

 params = (struct ec_params_motion_sense *)msg->data;
 params->cmd = MOTIONSENSE_CMD_DUMP;

 ret = cros_ec_cmd_xfer_status(ec->ec_dev, msg);
 if (ret < 0) {
  dev_warn(ec->dev, "cannot get EC sensor information: %d/%d\n",
    ret, msg->result);
  goto error;
 }

 resp = (struct ec_response_motion_sense *)msg->data;
 sensor_num = resp->dump.sensor_count;



 sensor_cells = kcalloc(sensor_num + 2, sizeof(struct mfd_cell),
          GFP_KERNEL);
 if (sensor_cells == ((void*)0))
  goto error;

 sensor_platforms = kcalloc(sensor_num,
       sizeof(struct cros_ec_sensor_platform),
       GFP_KERNEL);
 if (sensor_platforms == ((void*)0))
  goto error_platforms;

 memset(sensor_type, 0, sizeof(sensor_type));
 id = 0;
 for (i = 0; i < sensor_num; i++) {
  params->cmd = MOTIONSENSE_CMD_INFO;
  params->info.sensor_num = i;
  ret = cros_ec_cmd_xfer_status(ec->ec_dev, msg);
  if (ret < 0) {
   dev_warn(ec->dev, "no info for EC sensor %d : %d/%d\n",
     i, ret, msg->result);
   continue;
  }
  switch (resp->info.type) {
  case 134:
   sensor_cells[id].name = "cros-ec-accel";
   break;
  case 132:
   sensor_cells[id].name = "cros-ec-baro";
   break;
  case 131:
   sensor_cells[id].name = "cros-ec-gyro";
   break;
  case 129:
   sensor_cells[id].name = "cros-ec-mag";
   break;
  case 128:
   sensor_cells[id].name = "cros-ec-prox";
   break;
  case 130:
   sensor_cells[id].name = "cros-ec-light";
   break;
  case 133:
   sensor_cells[id].name = "cros-ec-activity";
   break;
  default:
   dev_warn(ec->dev, "unknown type %d\n", resp->info.type);
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

 if (sensor_type[134] >= 2)
  ec->has_kb_wake_angle = 1;

 if (cros_ec_check_features(ec, EC_FEATURE_MOTION_SENSE_FIFO)) {
  sensor_cells[id].name = "cros-ec-ring";
  id++;
 }
 if (cros_ec_check_features(ec,
    EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS)) {
  sensor_cells[id].name = "cros-ec-lid-angle";
  id++;
 }

 ret = mfd_add_devices(ec->dev, 0, sensor_cells, id,
         ((void*)0), 0, ((void*)0));
 if (ret)
  dev_err(ec->dev, "failed to add EC sensors\n");

 kfree(sensor_platforms);
error_platforms:
 kfree(sensor_cells);
error:
 kfree(msg);
}
