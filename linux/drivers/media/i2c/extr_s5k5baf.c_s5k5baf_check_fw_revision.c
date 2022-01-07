
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct s5k5baf {int sd; } ;


 int ENODEV ;
 int REG_FW_APIVER ;
 int REG_FW_REVISION ;
 int REG_FW_SENSOR_ID ;
 scalar_t__ S5K5BAF_FW_APIVER ;
 int s5k5baf_clear_error (struct s5k5baf*) ;
 int s5k5baf_read (struct s5k5baf*,int ) ;
 int v4l2_err (int *,char*) ;
 int v4l2_info (int *,char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int s5k5baf_check_fw_revision(struct s5k5baf *state)
{
 u16 api_ver = 0, fw_rev = 0, s_id = 0;
 int ret;

 api_ver = s5k5baf_read(state, REG_FW_APIVER);
 fw_rev = s5k5baf_read(state, REG_FW_REVISION) & 0xff;
 s_id = s5k5baf_read(state, REG_FW_SENSOR_ID);
 ret = s5k5baf_clear_error(state);
 if (ret < 0)
  return ret;

 v4l2_info(&state->sd, "FW API=%#x, revision=%#x sensor_id=%#x\n",
    api_ver, fw_rev, s_id);

 if (api_ver != S5K5BAF_FW_APIVER) {
  v4l2_err(&state->sd, "FW API version not supported\n");
  return -ENODEV;
 }

 return 0;
}
