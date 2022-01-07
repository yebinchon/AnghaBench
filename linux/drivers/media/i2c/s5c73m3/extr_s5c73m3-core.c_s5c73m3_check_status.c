
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct s5c73m3 {int sensor_sd; } ;


 int ETIMEDOUT ;
 int REG_I2C_SEQ_STATUS ;
 int REG_I2C_STATUS ;
 int REG_STATUS ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 unsigned long msecs_to_jiffies (int) ;
 int s5c73m3_dbg ;
 int s5c73m3_read (struct s5c73m3*,int ,unsigned int*) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int usleep_range (int,int) ;
 int v4l2_dbg (int,int ,int *,char*,int ) ;
 int v4l2_err (int *,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int s5c73m3_check_status(struct s5c73m3 *state, unsigned int value)
{
 unsigned long start = jiffies;
 unsigned long end = start + msecs_to_jiffies(2000);
 int ret;
 u16 status;
 int count = 0;

 do {
  ret = s5c73m3_read(state, REG_STATUS, &status);
  if (ret < 0 || status == value)
   break;
  usleep_range(500, 1000);
  ++count;
 } while (time_is_after_jiffies(end));

 if (count > 0)
  v4l2_dbg(1, s5c73m3_dbg, &state->sensor_sd,
    "status check took %dms\n",
    jiffies_to_msecs(jiffies - start));

 if (ret == 0 && status != value) {
  u16 i2c_status = 0;
  u16 i2c_seq_status = 0;

  s5c73m3_read(state, REG_I2C_STATUS, &i2c_status);
  s5c73m3_read(state, REG_I2C_SEQ_STATUS, &i2c_seq_status);

  v4l2_err(&state->sensor_sd,
    "wrong status %#x, expected: %#x, i2c_status: %#x/%#x\n",
    status, value, i2c_status, i2c_seq_status);

  return -ETIMEDOUT;
 }

 return ret;
}
