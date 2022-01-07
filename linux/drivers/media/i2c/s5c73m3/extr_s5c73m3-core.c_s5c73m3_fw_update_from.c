
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {struct v4l2_subdev sensor_sd; } ;


 int COMM_FW_UPDATE ;

 int COMM_FW_UPDATE_NOT_READY ;

 int EIO ;
 int ETIMEDOUT ;
 int msleep (int) ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,int ) ;
 int s5c73m3_read (struct s5c73m3*,int,int*) ;
 int v4l2_warn (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int s5c73m3_fw_update_from(struct s5c73m3 *state)
{
 struct v4l2_subdev *sd = &state->sensor_sd;
 u16 status = COMM_FW_UPDATE_NOT_READY;
 int ret;
 int count = 0;

 v4l2_warn(sd, "Updating F-ROM firmware.\n");
 do {
  if (status == COMM_FW_UPDATE_NOT_READY) {
   ret = s5c73m3_isp_command(state, COMM_FW_UPDATE, 0);
   if (ret < 0)
    return ret;
  }

  ret = s5c73m3_read(state, 0x00095906, &status);
  if (ret < 0)
   return ret;
  switch (status) {
  case 129:
   v4l2_warn(sd, "Updating F-ROM firmware failed.\n");
   return -EIO;
  case 128:
   v4l2_warn(sd, "Updating F-ROM firmware finished.\n");
   return 0;
  }
  ++count;
  msleep(20);
 } while (count < 500);

 v4l2_warn(sd, "Updating F-ROM firmware timed-out.\n");
 return -ETIMEDOUT;
}
