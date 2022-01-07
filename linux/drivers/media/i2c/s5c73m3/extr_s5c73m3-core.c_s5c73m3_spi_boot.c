
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {struct v4l2_subdev sensor_sd; } ;


 int s5c73m3_fw_update_from (struct s5c73m3*) ;
 int s5c73m3_load_fw (struct v4l2_subdev*) ;
 int s5c73m3_read_fw_version (struct s5c73m3*) ;
 int s5c73m3_system_status_wait (struct s5c73m3*,int,int,int) ;
 int s5c73m3_write (struct s5c73m3*,int,int) ;
 scalar_t__ update_fw ;
 int usleep_range (int,int) ;
 int v4l2_err (struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int s5c73m3_spi_boot(struct s5c73m3 *state, bool load_fw)
{
 struct v4l2_subdev *sd = &state->sensor_sd;
 int ret;


 ret = s5c73m3_write(state, 0x30000004, 0xffff);
 if (ret < 0)
  return ret;

 usleep_range(400, 500);


 ret = s5c73m3_system_status_wait(state, 0x0c, 100, 3);
 if (ret < 0) {
  v4l2_err(sd, "booting failed: %d\n", ret);
  return ret;
 }


 ret = s5c73m3_write(state, 0x30100014, 0x2146);
 if (ret < 0)
  return ret;

 ret = s5c73m3_write(state, 0x30100010, 0x210c);
 if (ret < 0)
  return ret;

 usleep_range(200, 250);


 ret = s5c73m3_system_status_wait(state, 0x210d, 100, 300);
 if (ret < 0)
  v4l2_err(sd, "SPI not ready: %d\n", ret);


 if (load_fw)
  s5c73m3_load_fw(sd);


 ret = s5c73m3_write(state, 0x30000004, 0xfffd);
 if (ret < 0)
  return ret;


 ret = s5c73m3_write(state, 0x301000a4, 0x0183);
 if (ret < 0)
  return ret;


 ret = s5c73m3_write(state, 0x30000004, 0xffff);
 if (ret < 0 || !load_fw)
  return ret;

 ret = s5c73m3_read_fw_version(state);
 if (ret < 0)
  return ret;

 if (load_fw && update_fw) {
  ret = s5c73m3_fw_update_from(state);
  update_fw = 0;
 }

 return ret;
}
