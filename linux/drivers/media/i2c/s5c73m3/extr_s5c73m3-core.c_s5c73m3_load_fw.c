
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {char* fw_file_version; int isp_ready; struct i2c_client* i2c_client; } ;
struct i2c_client {int dev; } ;
struct firmware {int size; int data; } ;
typedef int fw_name ;


 int EINVAL ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int s5c73m3_spi_write (struct s5c73m3*,int ,int ,int) ;
 struct s5c73m3* sensor_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 int snprintf (char*,int,char*,char*) ;
 int v4l2_err (struct v4l2_subdev*,char*,...) ;
 int v4l2_info (struct v4l2_subdev*,char*,char*,int ) ;

__attribute__((used)) static int s5c73m3_load_fw(struct v4l2_subdev *sd)
{
 struct s5c73m3 *state = sensor_sd_to_s5c73m3(sd);
 struct i2c_client *client = state->i2c_client;
 const struct firmware *fw;
 int ret;
 char fw_name[20];

 snprintf(fw_name, sizeof(fw_name), "SlimISP_%.2s.bin",
       state->fw_file_version);
 ret = request_firmware(&fw, fw_name, &client->dev);
 if (ret < 0) {
  v4l2_err(sd, "Firmware request failed (%s)\n", fw_name);
  return -EINVAL;
 }

 v4l2_info(sd, "Loading firmware (%s, %zu B)\n", fw_name, fw->size);

 ret = s5c73m3_spi_write(state, fw->data, fw->size, 64);

 if (ret >= 0)
  state->isp_ready = 1;
 else
  v4l2_err(sd, "SPI write failed\n");

 release_firmware(fw);

 return ret;
}
