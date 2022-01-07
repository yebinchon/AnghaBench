
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smiapp_module_info {scalar_t__ manufacturer_id; scalar_t__ model_id; scalar_t__ revision_number_major; scalar_t__ revision_number_minor; scalar_t__ module_year; scalar_t__ module_month; scalar_t__ module_day; scalar_t__ sensor_manufacturer_id; scalar_t__ sensor_model_id; scalar_t__ sensor_revision_number; scalar_t__ sensor_firmware_version; scalar_t__ smia_version; scalar_t__ smiapp_version; int name; int quirk; } ;
struct smiapp_sensor {struct smiapp_module_info minfo; TYPE_1__* src; } ;
struct i2c_client {int dev; } ;
struct TYPE_5__ {scalar_t__ manufacturer_id; scalar_t__ model_id; int flags; scalar_t__ revision_number_major; int quirk; int name; } ;
struct TYPE_4__ {int sd; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 int ENODEV ;
 int SMIAPP_MODULE_IDENT_FLAG_REV_LE ;
 int SMIAPP_NAME ;
 int SMIAPP_REG_U16_MODEL_ID ;
 int SMIAPP_REG_U16_SENSOR_MODEL_ID ;
 int SMIAPP_REG_U8_MANUFACTURER_ID ;
 int SMIAPP_REG_U8_MODULE_DATE_DAY ;
 int SMIAPP_REG_U8_MODULE_DATE_MONTH ;
 int SMIAPP_REG_U8_MODULE_DATE_YEAR ;
 int SMIAPP_REG_U8_REVISION_NUMBER_MAJOR ;
 int SMIAPP_REG_U8_REVISION_NUMBER_MINOR ;
 int SMIAPP_REG_U8_SENSOR_FIRMWARE_VERSION ;
 int SMIAPP_REG_U8_SENSOR_MANUFACTURER_ID ;
 int SMIAPP_REG_U8_SENSOR_REVISION_NUMBER ;
 int SMIAPP_REG_U8_SMIAPP_VERSION ;
 int SMIAPP_REG_U8_SMIA_VERSION ;
 int dev_dbg (int *,char*,scalar_t__,scalar_t__,...) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 TYPE_2__* smiapp_module_idents ;
 int smiapp_read_8only (struct smiapp_sensor*,int ,scalar_t__*) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int smiapp_identify_module(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 struct smiapp_module_info *minfo = &sensor->minfo;
 unsigned int i;
 int rval = 0;

 minfo->name = SMIAPP_NAME;


 rval = smiapp_read_8only(sensor, SMIAPP_REG_U8_MANUFACTURER_ID,
     &minfo->manufacturer_id);
 if (!rval)
  rval = smiapp_read_8only(sensor, SMIAPP_REG_U16_MODEL_ID,
      &minfo->model_id);
 if (!rval)
  rval = smiapp_read_8only(sensor,
      SMIAPP_REG_U8_REVISION_NUMBER_MAJOR,
      &minfo->revision_number_major);
 if (!rval)
  rval = smiapp_read_8only(sensor,
      SMIAPP_REG_U8_REVISION_NUMBER_MINOR,
      &minfo->revision_number_minor);
 if (!rval)
  rval = smiapp_read_8only(sensor,
      SMIAPP_REG_U8_MODULE_DATE_YEAR,
      &minfo->module_year);
 if (!rval)
  rval = smiapp_read_8only(sensor,
      SMIAPP_REG_U8_MODULE_DATE_MONTH,
      &minfo->module_month);
 if (!rval)
  rval = smiapp_read_8only(sensor, SMIAPP_REG_U8_MODULE_DATE_DAY,
      &minfo->module_day);


 if (!rval)
  rval = smiapp_read_8only(sensor,
      SMIAPP_REG_U8_SENSOR_MANUFACTURER_ID,
      &minfo->sensor_manufacturer_id);
 if (!rval)
  rval = smiapp_read_8only(sensor,
      SMIAPP_REG_U16_SENSOR_MODEL_ID,
      &minfo->sensor_model_id);
 if (!rval)
  rval = smiapp_read_8only(sensor,
      SMIAPP_REG_U8_SENSOR_REVISION_NUMBER,
      &minfo->sensor_revision_number);
 if (!rval)
  rval = smiapp_read_8only(sensor,
      SMIAPP_REG_U8_SENSOR_FIRMWARE_VERSION,
      &minfo->sensor_firmware_version);


 if (!rval)
  rval = smiapp_read_8only(sensor, SMIAPP_REG_U8_SMIA_VERSION,
      &minfo->smia_version);
 if (!rval)
  rval = smiapp_read_8only(sensor, SMIAPP_REG_U8_SMIAPP_VERSION,
      &minfo->smiapp_version);

 if (rval) {
  dev_err(&client->dev, "sensor detection failed\n");
  return -ENODEV;
 }

 dev_dbg(&client->dev, "module 0x%2.2x-0x%4.4x\n",
  minfo->manufacturer_id, minfo->model_id);

 dev_dbg(&client->dev,
  "module revision 0x%2.2x-0x%2.2x date %2.2d-%2.2d-%2.2d\n",
  minfo->revision_number_major, minfo->revision_number_minor,
  minfo->module_year, minfo->module_month, minfo->module_day);

 dev_dbg(&client->dev, "sensor 0x%2.2x-0x%4.4x\n",
  minfo->sensor_manufacturer_id, minfo->sensor_model_id);

 dev_dbg(&client->dev,
  "sensor revision 0x%2.2x firmware version 0x%2.2x\n",
  minfo->sensor_revision_number, minfo->sensor_firmware_version);

 dev_dbg(&client->dev, "smia version %2.2d smiapp version %2.2d\n",
  minfo->smia_version, minfo->smiapp_version);






 if (!minfo->manufacturer_id && !minfo->model_id) {
  minfo->manufacturer_id = minfo->sensor_manufacturer_id;
  minfo->model_id = minfo->sensor_model_id;
  minfo->revision_number_major = minfo->sensor_revision_number;
 }

 for (i = 0; i < ARRAY_SIZE(smiapp_module_idents); i++) {
  if (smiapp_module_idents[i].manufacturer_id
      != minfo->manufacturer_id)
   continue;
  if (smiapp_module_idents[i].model_id != minfo->model_id)
   continue;
  if (smiapp_module_idents[i].flags
      & SMIAPP_MODULE_IDENT_FLAG_REV_LE) {
   if (smiapp_module_idents[i].revision_number_major
       < minfo->revision_number_major)
    continue;
  } else {
   if (smiapp_module_idents[i].revision_number_major
       != minfo->revision_number_major)
    continue;
  }

  minfo->name = smiapp_module_idents[i].name;
  minfo->quirk = smiapp_module_idents[i].quirk;
  break;
 }

 if (i >= ARRAY_SIZE(smiapp_module_idents))
  dev_warn(&client->dev,
    "no quirks for this module; let's hope it's fully compliant\n");

 dev_dbg(&client->dev, "the sensor is called %s, ident %2.2x%4.4x%2.2x\n",
  minfo->name, minfo->manufacturer_id, minfo->model_id,
  minfo->revision_number_major);

 return 0;
}
