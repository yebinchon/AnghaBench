
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct s5c73m3 {int sensor_sd; } ;


 int COMM_AF_SOFTLANDING ;
 int COMM_AF_SOFTLANDING_ON ;
 scalar_t__ COMM_AF_SOFTLANDING_RES_COMPLETE ;
 int ETIME ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int msleep (int) ;
 int s5c73m3_isp_comm_result (struct s5c73m3*,int ,scalar_t__*) ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,int ) ;
 int v4l2_info (int *,char*,...) ;

__attribute__((used)) static int s5c73m3_set_af_softlanding(struct s5c73m3 *state)
{
 unsigned long start = jiffies;
 u16 af_softlanding;
 int count = 0;
 int ret;
 const char *msg;

 ret = s5c73m3_isp_command(state, COMM_AF_SOFTLANDING,
     COMM_AF_SOFTLANDING_ON);
 if (ret < 0) {
  v4l2_info(&state->sensor_sd, "AF soft-landing failed\n");
  return ret;
 }

 for (;;) {
  ret = s5c73m3_isp_comm_result(state, COMM_AF_SOFTLANDING,
       &af_softlanding);
  if (ret < 0) {
   msg = "failed";
   break;
  }
  if (af_softlanding == COMM_AF_SOFTLANDING_RES_COMPLETE) {
   msg = "succeeded";
   break;
  }
  if (++count > 100) {
   ret = -ETIME;
   msg = "timed out";
   break;
  }
  msleep(25);
 }

 v4l2_info(&state->sensor_sd, "AF soft-landing %s after %dms\n",
    msg, jiffies_to_msecs(jiffies - start));

 return ret;
}
